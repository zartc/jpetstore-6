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

import net.sourceforge.stripes.action.ActionBean;
import net.sourceforge.stripes.action.ActionBeanContext;
import net.sourceforge.stripes.action.SimpleMessage;


/**
 * @author Eduardo Macarron
 */
abstract class AbstractActionBean implements ActionBean {

	private transient ActionBeanContext context;


	protected void setMessage(String value) {
		getContext().getMessages().add(new SimpleMessage(value));
	}

	@Override
	public ActionBeanContext getContext() {
		return context;
	}

	@Override
	public void setContext(final ActionBeanContext context) {
		this.context = context;
	}

}

/* EOF */
