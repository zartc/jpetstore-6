package org.mybatis.jpetstore.web.actions;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;


public class GenericTemplateAction extends AbstractActionBean {
	private static final long serialVersionUID = 1L;

	@DefaultHandler
	public Resolution displayGenericPage() {
		return new ForwardResolution("/WEB-INF/jsp/templates/TestGenericPage.jsp");
	}
}

/* EOF */
