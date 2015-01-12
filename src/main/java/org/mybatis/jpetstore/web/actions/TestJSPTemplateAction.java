package org.mybatis.jpetstore.web.actions;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;

import org.mybatis.jpetstore.web.ApplicationPaths;


public class TestJSPTemplateAction extends AbstractActionBean {
	
	@DefaultHandler
	public Resolution display() {
		return new ForwardResolution(ApplicationPaths.TestJSPTemplate);
	}
}

/* EOF */
