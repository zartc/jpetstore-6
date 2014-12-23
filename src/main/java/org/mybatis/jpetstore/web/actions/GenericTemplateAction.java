package org.mybatis.jpetstore.web.actions;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;


public class GenericTemplateAction extends AbstractActionBean {

	@DefaultHandler
	public Resolution displayGenericPage() {
		return new ForwardResolution("/WEB-INF/jsp/templates/TestGenericPage.jsp");
	}

}

/* EOF */
