package org.mybatis.jpetstore.web;

public interface ApplicationPaths {
	static final String ERROR = "/WEB-INF/jsp/common/Error.jsp";

	static final String NEW_ACCOUNT = "/WEB-INF/jsp/account/NewAccountForm.jsp";
	static final String EDIT_ACCOUNT = "/WEB-INF/jsp/account/EditAccountForm.jsp";
	static final String SIGNON = "/WEB-INF/jsp/account/SignonForm.jsp";
	
	static final String VIEW_CART = "/WEB-INF/jsp/cart/Cart.jsp";
	static final String CHECK_OUT = "/WEB-INF/jsp/cart/Checkout.jsp";

	static final String MAIN = "/WEB-INF/jsp/catalog/Main.jsp";
	static final String VIEW_CATEGORY = "/WEB-INF/jsp/catalog/Category.jsp";
	static final String VIEW_PRODUCT = "/WEB-INF/jsp/catalog/Product.jsp";
	static final String VIEW_ITEM = "/WEB-INF/jsp/catalog/Item.jsp";
	static final String SEARCH_PRODUCTS = "/WEB-INF/jsp/catalog/SearchProducts.jsp";
	
	static final String CONFIRM_ORDER = "/WEB-INF/jsp/order/ConfirmOrder.jsp";
	static final String LIST_ORDERS = "/WEB-INF/jsp/order/ListOrders.jsp";
	static final String NEW_ORDER = "/WEB-INF/jsp/order/NewOrderForm.jsp";
	static final String SHIPPING = "/WEB-INF/jsp/order/ShippingForm.jsp";
	static final String VIEW_ORDER = "/WEB-INF/jsp/order/ViewOrder.jsp";
}

/* EOF */
