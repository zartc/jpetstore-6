I came up with a set of decorators [combined with our CSS stategy] to control page layout. 
I've listed them here with a brief description of each:

    normal.jsp - Flexible layout, variable width, include branding, tools, nav,...

    light.jsp - Light branding, no tools, no navigation. Used on pages like login.jsp where users haven't been authenticated yet

    minimal.jsp - No branding or anything, but full xhtml document. Good for dialogs

    stripped.jsp - Uses no decoration at all, only includes body. Good for pages where you can't have any extras. Basically, this takes "minimal.jsp" one step futher.


    error.jsp - Intended to decorate error pages only


    portal.jsp - Fixed width, used to layout pages in portal style, includes branding, tools, nav, ...

    portlet.jsp - Wraps content inside a portlet look. Not a full xhtml document; only a fragment
