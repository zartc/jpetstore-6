package org.mybatis.jpetstore.web.actions;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;

public class SitemeshNormalTemplateAction extends AbstractActionBean {

	@DefaultHandler
	public Resolution display() {
		return new ForwardResolution("/WEB-INF/jsp/templates/TestNormalTemplate.jsp");
	}

}
