<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<html:form action="login.do" method="post">
    user id:
    <html:text property="userid" size="50" /><br />
    password:
    <html:password property="password" size="50" /><br />
    comment:
    <html:textarea property="comment" rows="5" cols="20" /><br />

    <html:radio property="userType" value="individual" />individual<br />
    <html:radio property="userType" value="corporate" />corporate<br />

    <html:checkbox property="agreeBln" value="true" />agree1<br />
    <%-- String型のcheckboxの場合、画面上で外すとformの値がnullになる --%>
    <html:checkbox property="agreeStr" value="true" />agree2<br />

    <html:multibox property="hobbies" value="swimming" />Swimming<br />
    <html:multibox property="hobbies" value="football" />Football<br />
    <html:multibox property="hobbies" value="running" />Running<br />

    <html:hidden property="secret" value="secret" />

    <html:submit property="submit" value="Submit" />
    <html:reset value="Reset" />
</html:form>
</body>
</html>