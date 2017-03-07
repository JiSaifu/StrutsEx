<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<html:html>
<head>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <title><bean:message key="sign_up.title" bundle="AppRes" /></title>
</head>
<body>
<%-- 5.4 formタグ／submitタグ／cancelタグ／resetタグ --%>
<html:form action="sign_in.do?method=certificate" method="post">
    <table>
        <%-- 6.1 textタグ/passwordタグ/textareaタグ --%>
        <tr>
            <td><bean:message key="sign_up.userId" bundle="AppRes" /></td>
            <td><html:text property="userId" size="15" maxlength="20"/></td>
            <td><html:errors property="userId" bundle="ErrMsg"/></td>
        </tr>
        <tr>
            <td><bean:message key="sign_up.pw" bundle="AppRes" /></td>
            <td><html:password property="password" size="15" maxlength="20" /></td>
            <td><html:errors property="password" bundle="ErrMsg" /></td>
        </tr>
    </table>
    <html:submit>
        <bean:message key="sign_up.submit" bundle="AppRes" />
    </html:submit>
    <br />
</html:form>
</body>
</html:html>