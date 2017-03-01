<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<html:html>
<head>
    <title><bean:message key="sign_up.title" bundle="AppRes" /></title>
</head>
<body>
<%-- 5.4 formタグ／submitタグ／cancelタグ／resetタグ --%>
<html:form action="sign_up_process.do?method=confirm" method="post">
    <table>
        <%-- 6.1 textタグ/passwordタグ/textareaタグ --%>
        <tr>
            <td><bean:message key="sign_up.userId" bundle="AppRes" /></td>
            <td><html:text property="userId" size="15" maxlength="20" /></td>
            <td><html:errors property="userId" bundle="ErrMsg" /></td>
        </tr>
        <tr>
            <td><bean:message key="sign_up.pw" bundle="AppRes" /></td>
            <td><html:password property="password" size="15" maxlength="20" /></td>
            <td><html:errors property="password" bundle="ErrMsg" /></td>
        </tr>
        <tr>
            <td><bean:message key="sign_up.confirm_pw" bundle="AppRes" /></td>
            <td><html:password property="confirmPassword" size="15" maxlength="20" /></td>
            <%-- 9.4 messagesPresentタグ／messagesNotPresentタグ --%>
            <td>
                <logic:messagesPresent property="cfmPassword">
                    <html:errors property="cfmPassword" bundle="ErrMsg" />
                </logic:messagesPresent>
                <logic:messagesNotPresent property="cfmPassword">
                    <bean:message key="sign_up.same_password" bundle="AppRes" />
                </logic:messagesNotPresent>
            </td>
        </tr>
        <tr>
            <td><bean:message key="sign_up.sex" bundle="AppRes" /></td>
            <td>
                <bean:message key="sign_up.male" bundle="AppRes" />&nbsp;
                <html:radio property="sex" value="M" />&nbsp;&nbsp;
                <bean:message key="sign_up.female" bundle="AppRes" />&nbsp;
                <html:radio property="sex" value="F" />
            </td>
            <td />
        </tr>
        <tr>
            <%-- 7.1 html:selectタグ／optionタグ／optionsタグ／optionsCollectionタグ--%>
            <td><bean:message key="sign_up.age" bundle="AppRes" /></td>
            <td>
                <html:select property="age">
                    <html:options property="ageArray" />
                </html:select>
            </td>
            <td />
        </tr>
        <tr>
            <%-- 7.1 html:selectタグ／optionタグ／optionsタグ／optionsCollectionタグ--%>
            <td><bean:message key="sign_up.country" bundle="AppRes" /></td>
            <td>
                <html:select property="country">
                    <html:optionsCollection name="countryList" />
                </html:select>
            </td>
            <td />
        </tr>
        <tr>
            <td><bean:message key="sign_up.self_introduction" bundle="AppRes" /></td>
            <td><html:textarea property="introduction" rows="5" cols="25" /></td>
            <td />
        </tr>
        <tr>
            <td><bean:message key="sign_up.hobbies" bundle="AppRes" /></td>
            <td colspan="2">
                <table>
                    <%-- 6.4 checkboxタグ／multiboxタグ --%>
                    <tr>
                        <td>
                            <html:multibox property="hobbies" value="swimming" />&nbsp;
                            <bean:message key="sign_up.hobbies.swimming" bundle="AppRes" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <html:multibox property="hobbies" value="football" />&nbsp;
                            <bean:message key="sign_up.hobbies.football" bundle="AppRes" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <html:multibox property="hobbies" value="basketball" />&nbsp;
                            <bean:message key="sign_up.hobbies.basketball" bundle="AppRes" />
                        </td>
                    </tr>
                </table>
            <td />
        </tr>
        <tr>
            <td colspan="3"><bean:message key="sign_up.option_service" bundle="AppRes" /></td>
        </tr>
        <tr>
            <td colspan="3">
                <table>
                    <%-- 6.4 checkboxタグ／multiboxタグ --%>
                    <tr>
                        <td>
                            <html:checkbox property="rcvInf"/>&nbsp;
                            <bean:message key="sign_up.rcv_Inf" bundle="AppRes" />
                        </td>
                    </tr>
                </table>
            <td />
        </tr>
    </table>
    <%-- 5.4 formタグ／submitタグ／cancelタグ／resetタグ --%>
    <html:cancel value="Cancel" />&nbsp;
    <html:submit>
        <bean:message key="sign_up.submit" bundle="AppRes" />
    </html:submit>&nbsp;
    <html:reset>
        <bean:message key="sign_up.reset" bundle="AppRes" />
    </html:reset>&nbsp;
    <br />
</html:form>
</body>
</html:html>