<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html>
<head>
    <title>The library for project</title>
</head>
<body>
<html:form action="prjTest_2.do">
    <%
        java.util.Map map = (java.util.Map)request.getAttribute("ptbTree");
        request.setAttribute("ptbTree1", map);
    %>
    <%--
        http://www.techscore.com/tech/Java/ApacheJakarta/Struts/8-2/
        logic:iterateの属性説明：
            id:     	コレクション／配列の各要素をpageスコープに登録する際の名前を指定します。
                        要素はコレクション／配列から取り出された順番に登録されます。
            indexId:    幾つ目の要素を取り出しているかを、pageスコープに登録する際の名前を指定します。
                        0からカウントされます。（bean:writeで出力するのは）
            name:       Java Beanをスコープから検索するためのキー。
                        property属性が省略された場合には、Java Beanがコレクション／配列として扱われる。
            property:   コレクション／配列を格納したJavaBeanのプロパティ。
            collection: スクリプトレットで指定された値を、コレクション／配列として取り扱います。
            offset:     コレクション／配列の何番目のインデックスの要素から取り出していくか指定する。
                        先頭要素のインデックスは0。
            length:     最大幾つの要素を取り出すか指定する。
    --%>
    <logic:iterate id="tree" indexId="idx" name="ptbTree" length="3" offset="1">
        <bean:write name="idx" />
        .
        <html:radio idName="tree" property="radio" value="key" />
        <bean:write name="tree" property="value.col1" /><br />
    </logic:iterate>
    <%--
        http://www.techscore.com/tech/Java/ApacheJakarta/Struts/8-3/
        logic:equal/notEqual/greaterEqual/greaterThan/lessEqual/lessThanの属性説明：
        name:       JavaBeanのキー
        property:   比較対象のJavaBeanのプロパティ
        cookie:     比較を行うクッキーのパラメータ名
        parameter:  比較を行うHTTPリクエストのパラメータ名
        header:     比較を行うHTTPヘッダーのパラメータ名
    --%>
    <logic:equal name="compareBean" property="number" value="100">
        <bean:write name="compareBean" property="number" /> equal 100<br />
    </logic:equal>

    <logic:notEqual name="compareBean" property="number" value="110">
        <bean:write name="compareBean" property="number" /> notEqual 110<br />
    </logic:notEqual>

    <logic:greaterEqual name="compareBean" property="number" value="100">
        <bean:write name="compareBean" property="number" /> greaterEqual 100<br />
    </logic:greaterEqual>

    <logic:greaterThan name="compareBean" property="number" value="99">
        <bean:write name="compareBean" property="number" /> greaterThan 99<br />
    </logic:greaterThan>

    <logic:lessEqual name="compareBean" property="number" value="101">
        <bean:write name="compareBean" property="number" /> lessEqual 101<br />
    </logic:lessEqual>

    <logic:lessThan name="compareBean" property="number" value="102">
        <bean:write name="compareBean" property="number" /> lessThan 102<br />
    </logic:lessThan>
    <input type="submit" value="Submit" />
</html:form>
</body>
</html>