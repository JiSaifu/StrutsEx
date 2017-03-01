<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-nested" prefix="nested"%>

<html:html>
<head>
    <title><bean:message key="confirm.title" bundle="AppRes" /></title>
</head>
<body>
<%
    // 現在時刻を取得する
    pageContext.setAttribute("today", new java.util.Date());
%>

<%-- 5.4 html:formタグ／submitタグ／cancelタグ／resetタグ --%>
    <html:form>
        <%-- 4.2 bean:writeタグ --%>
        <bean:write name="today" formatKey="common.date_fmt" bundle="AppRes" /><br />
        <table>
            <%-- 10.2 nested:rootタグ --%>
            <nested:root name="signUpForm">
            <tr>
                <td><bean:message key="confirm.userId" bundle="AppRes" /></td>
                <td><nested:write property="userId" /></td>
            </tr>
            <tr>
                <td><bean:message key="confirm.sex" bundle="AppRes" /></td>
                <td>
                    <%-- 8.3. logic:equalタグ／notEqualタグ／greaterEqualタグ／
                    greaterThanタグ／lessEqualタグ／lessThanタグ --%>
                    <logic:equal name="signUpForm" property="sex" value="M">
                        <bean:message key="confirm.male" bundle="AppRes" />
                    </logic:equal>
                    <logic:equal name="signUpForm" property="sex" value="F">
                        <bean:message key="confirm.female" bundle="AppRes" />
                    </logic:equal>
                </td>
            </tr>
            <tr>
                <td><bean:message key="confirm.self_introduction" bundle="AppRes" /></td>
                <td><pre><nested:write property="introduction" /></pre></td>
            </tr>
            <tr>
                <td><bean:message key="confirm.countryInfo" bundle="AppRes" /></td>
                <td>
                    <nested:nest property="countryBean">
                        <nested:write property="name" /><br />
                        <nested:write property="capital" /><br />
                        <nested:write property="area" /><br />
                    </nested:nest>
                </td>
            </tr>
            </nested:root>
        </table>
    </html:form>
</body>
</html:html>