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

package org.mybatis.jpetstore.web.actions;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpSession;

import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.SessionScope;
import net.sourceforge.stripes.integration.spring.SpringBean;

import org.mybatis.jpetstore.domain.Order;
import org.mybatis.jpetstore.service.OrderService;
import org.mybatis.jpetstore.web.ApplicationPaths;


/**
 * @author Eduardo Macarron
 */
@SessionScope
public class OrderActionBean extends AbstractActionBean {


	
	private static final List<String> CARD_TYPE_LIST;
	
	@SpringBean
	private transient OrderService orderService;
	
	private Order order = new Order();
	private boolean shippingAddressRequired;
	private boolean confirmed;
	private List<Order> orderList;
	
	static {
		List<String> cardList = new ArrayList<>();
		cardList.add("Visa");
		cardList.add("MasterCard");
		cardList.add("American Express");
		CARD_TYPE_LIST = Collections.unmodifiableList(cardList);
	}
	
	public int getOrderId() {
		return order.getOrderId();
	}
	
	public void setOrderId(int orderId) {
		order.setOrderId(orderId);
	}
	
	public Order getOrder() {
		return order;
	}
	
	public void setOrder(Order order) {
		this.order = order;
	}
	
	public boolean isShippingAddressRequired() {
		return shippingAddressRequired;
	}
	
	public void setShippingAddressRequired(boolean shippingAddressRequired) {
		this.shippingAddressRequired = shippingAddressRequired;
	}
	
	public boolean isConfirmed() {
		return confirmed;
	}
	
	public void setConfirmed(boolean confirmed) {
		this.confirmed = confirmed;
	}
	
	public List<String> getCreditCardTypes() {
		return CARD_TYPE_LIST;
	}
	
	public List<Order> getOrderList() {
		return orderList;
	}
	
	public Resolution listOrders() {
		HttpSession session = getContext().getRequest().getSession();
		AccountActionBean accountBean = (AccountActionBean)session.getAttribute("/actions/Account.action");
		orderList = orderService.getOrdersByUsername(accountBean.getAccount().getUsername());
		return new ForwardResolution(ApplicationPaths.LIST_ORDERS);
	}
	
	public Resolution newOrderForm() {
		HttpSession session = getContext().getRequest().getSession();
		AccountActionBean accountBean = (AccountActionBean)session.getAttribute("/actions/Account.action");
		CartActionBean cartBean = (CartActionBean)session.getAttribute("/actions/Cart.action");
		
		clear();
		if (accountBean == null || !accountBean.isAuthenticated()) {
			setMessage("You must sign on before attempting to check out.  Please sign on and try checking out again.");
			return new ForwardResolution(AccountActionBean.class);
		}
		else if (cartBean != null) {
			order.initOrder(accountBean.getAccount(), cartBean.getCart());
			return new ForwardResolution(ApplicationPaths.NEW_ORDER);
		}
		else {
			setMessage("An order could not be created because a cart could not be found.");
			return new ForwardResolution(ApplicationPaths.ERROR);
		}
	}
	
	public Resolution newOrder() {
		HttpSession session = getContext().getRequest().getSession();
		
		if (shippingAddressRequired) {
			shippingAddressRequired = false;
			return new ForwardResolution(ApplicationPaths.SHIPPING);
		}
		else if (!isConfirmed()) {
			return new ForwardResolution(ApplicationPaths.CONFIRM_ORDER);
		}
		else if (getOrder() != null) {
			orderService.insertOrder(order);
			((CartActionBean)session.getAttribute("/actions/Cart.action")).clear();
			setMessage("Thank you, your order has been submitted.");

			return new ForwardResolution(ApplicationPaths.VIEW_ORDER);
		}
		else {
			setMessage("An error occurred processing your order (order was null).");
			return new ForwardResolution(ApplicationPaths.ERROR);
		}
	}
	
	public Resolution viewOrder() {
		HttpSession session = getContext().getRequest().getSession();
		
		AccountActionBean accountBean = (AccountActionBean)session.getAttribute("accountBean");
		
		order = orderService.getOrder(order.getOrderId());
		
		if (accountBean.getAccount().getUsername().equals(order.getUsername())) {
			return new ForwardResolution(ApplicationPaths.VIEW_ORDER);
		}

		order = null;
		setMessage("You may only view your own orders.");
		return new ForwardResolution(ApplicationPaths.ERROR);
	}

	public void clear() {
		order = new Order();
		shippingAddressRequired = false;
		confirmed = false;
		orderList = null;
	}
	
}

/* EOF */
