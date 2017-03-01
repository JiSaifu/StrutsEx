<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<html:form action="helloWorld.do" method="post">
    <input type="checkbox" name="discount" value="1" />discount<br />

    <html:select  name="helloWorldForm" property="shops" size="2" multiple="true">
        <html:option value="Tokyo">Tokyo</html:option>
        <html:option value="Nagoya">Nagoya</html:option>
        <html:option value="Osaka">Osaka</html:option>
    </html:select><br />
    <input type="text" name="tel(home)" /><br />
    <%--
        html:errorsの説明：
            property:ActionErrors.addの第一引数propertyに設定する値と紐付く
    --%>
    <html:errors property="tel_home" />
    <input type="text" name="tel(mobile)" /><br />
    <html:errors property="tel_mobile" />

    <%--
        html:submit/cancel/resetタグの説明：
            property: inputタグのnameと同じが、cancelの場合、デフォルト値のままにする必要。
            value: inputタグのvalueと同じである。

            注意点：cancelを使う場合、struts-config.xml->action->cancellableをtrueにする必要。
            しないと例外が発生する。
    --%>
    <html:submit property="submit" value="Submit" />
    <html:cancel value="Cancel" />
    <html:reset value="Reset" />
</html:form>
</body>
</html>