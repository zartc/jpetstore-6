/*
 *    Copyright 2010-2013 the original author or authors.
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */

package org.mybatis.jpetstore.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.jpetstore.domain.Item;
import org.mybatis.jpetstore.domain.LineItem;
import org.mybatis.jpetstore.domain.Order;
import org.mybatis.jpetstore.domain.Sequence;
import org.mybatis.jpetstore.persistence.ItemMapper;
import org.mybatis.jpetstore.persistence.LineItemMapper;
import org.mybatis.jpetstore.persistence.OrderMapper;
import org.mybatis.jpetstore.persistence.SequenceMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * @author Eduardo Macarron
 */
@Service
public class OrderService {
	
	@Inject
	private ItemMapper itemMapper;

	@Inject
	private OrderMapper orderMapper;

	@Inject
	private SequenceMapper sequenceMapper;

	@Inject
	private LineItemMapper lineItemMapper;
	
	
	@Transactional
	public void insertOrder(Order order) {
		order.setOrderId(getNextId("ordernum"));
		for (int i = 0; i < order.getLineItems().size(); i++) {
			LineItem lineItem = order.getLineItems().get(i);
			String itemId = lineItem.getItemId();
			Integer increment = new Integer(lineItem.getQuantity());
			Map<String, Object> param = new HashMap<>(2);
			param.put("itemId", itemId);
			param.put("increment", increment);
			itemMapper.updateInventoryQuantity(param);
		}
		
		orderMapper.insertOrder(order);
		orderMapper.insertOrderStatus(order);
		for (int i = 0; i < order.getLineItems().size(); i++) {
			LineItem lineItem = order.getLineItems().get(i);
			lineItem.setOrderId(order.getOrderId());
			lineItemMapper.insertLineItem(lineItem);
		}
	}
	
	@Transactional
	public Order getOrder(int orderId) {
		Order order = orderMapper.getOrder(orderId);
		order.setLineItems(lineItemMapper.getLineItemsByOrderId(orderId));
		
		for (int i = 0; i < order.getLineItems().size(); i++) {
			LineItem lineItem = order.getLineItems().get(i);
			Item item = itemMapper.getItem(lineItem.getItemId());
			item.setQuantity(itemMapper.getInventoryQuantity(lineItem.getItemId()));
			lineItem.setItem(item);
		}
		
		return order;
	}
	
	public List<Order> getOrdersByUsername(String username) {
		return orderMapper.getOrdersByUsername(username);
	}
	
	public int getNextId(String name) {
		Sequence sequence = new Sequence(name, -1);
		sequence = sequenceMapper.getSequence(sequence);
		if (sequence == null) { throw new RuntimeException("Error: A null sequence was returned from the database (could not get next " + name + " sequence)."); }
		Sequence parameterObject = new Sequence(name, sequence.getNextId() + 1);
		sequenceMapper.updateSequence(parameterObject);
		return sequence.getNextId();
	}
	
}

/* EOF */
