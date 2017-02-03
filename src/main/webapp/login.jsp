<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<%--
    langがfalseに設定しても、trueに設定しても、HTTPヘッダーからAccept-Languageの値を読み取り、
    SessionにAttributeのorg.apache.struts.action.LOCALEとして設定する。
--%>
<html:html lang="false">
<head>
    <meta charset="UTF-8">
</head>
<body>
<html:form action="login.do" method="post">
    user id:
    <html:text property="userid" size="50" />
    <%--
        logic:messages(Not)Presentタグの説明：
        http://www.techscore.com/tech/Java/ApacheJakarta/Struts/9-4/
            requestスコープにorg.apache.struts.action.ActionErrorsオブジェクト
            （<html:errors>で表示されるメッセージを格納）、
            または文字列／文字配列が格納されているかどうか調べるタグです。
            タグはデフォルトで、ActionErrorsオブジェクトを調べます。
            属性説明：
                name:       指定すると文字列・文字列配列を調べるようになります。
                            指定した名前でrequestスコープに登録されているかどうかを調べます。
                property:   指定すると、それに関連付けられているActionErrorsオブジェクトのみを調査対象にします。
                            <html:errors>のproperty属性に対応しています。
    --%>
    <logic:messagesPresent property="userid">
        <html:errors property="userid" />
    </logic:messagesPresent>
    <logic:messagesNotPresent property="userid">
        user idを入力してください。<br />
    </logic:messagesNotPresent>
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
</html:html>