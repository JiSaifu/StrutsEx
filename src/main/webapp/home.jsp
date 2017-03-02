<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html:html>
<head>
    <%-- 4.1 bean:messageタグ --%>
    <title><bean:message key="home.title" bundle="AppRes" /></title>
</head>
<body>
    <html:link page="/sign_up.jsp">
        <html:img src="images/btn_sign_up.png" height="80" width="80" />
    </html:link>
</body>
</html:html>