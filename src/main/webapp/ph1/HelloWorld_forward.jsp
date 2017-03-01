<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%--
    http://www.techscore.com/tech/Java/ApacheJakarta/Struts/3-2/
    bean:defineの属性説明：
        id:         defineで定義する変数名。
        toScope:    beanが登録するスコープ。指定されない場合は、pageスコープに登録される。
        name:       beanがスコープに登録される名前、例：xxx.setAttribute("name",XXX)。
        property:   beanのプロパティ名。Beanが基本データ型のラッパークラスである場合には、省略可能。
        scope:      beanを検索するスコープ。指定されない場合、pageスコープから順に検索する。
        value:      name、及びproperty属性が指定されない場合に、この属性の値で指定のスコープに値を登録する。
                    登録する際の型は「java.lang.String」になる。
--%>
<bean:define id="splBean_double" name="bean1" property="doubleNum" />
<%--配列やリストの場合、プロパティ名[インデックス]--%>
<bean:define id="splBean_arrays1" name="bean1" property="arrays[1]" />
<%--マップの場合、プロパティ名.キー--%>
<bean:define id="splBean_mapKey1" name="bean1" property="map.key1" />

<%--
    http://www.techscore.com/tech/Java/ApacheJakarta/Struts/4-2/
    bean:writeの説明：
        name:       beanの名前。
        property:   beanの属性の名前。
        format:     出力するフォーマットを指定。プロパティがjava.util.Dateなどの場合に効果的。
        formatKey:  formatが指定されなかった場合に、フォーマットをリソースから検索する場合のキーを指定。
--%>
本日の日付：
<bean:write name="bean1" property="date" formatKey="fmt_date" /><br />

<%--
    http://www.techscore.com/tech/Java/ApacheJakarta/Struts/3-3/
    bean:parameter/cookie/headerの属性説明：
        id:         defineで定義する変数名。
        name:       parameterタグの場合は読み取るHTTPリクエストパラメータ名、cookieタグの場合はクッキー名、
                    headerタグの場合
        value:      nameで指定した名前は存在しなかった場合、変数に設定する値を指定。デフォルト値
        mutiple:    何らかの値が設定された場合、nameで指定した名前に該当する複数の値が変数に格納される。
                    その時の変数の型は、cookieタグの場合はjavax.servlet.http.cookie[]、
                    それ以外のタグの場合はjava.lang.String[]になる。
--%>
<bean:cookie id="cookie_test" name="test" value="default_value" />
<%=cookie_test%>

<html>
<head>
</head>
<body>
<h1><bean:write name="helloWorldForm" property="message" />
</h1>
<h2>Bean test</h2>
<h3>
    <%--
        http://www.techscore.com/tech/Java/ApacheJakarta/Struts/4/
        bean:messageの属性説明：
        key:            struts-config.xmlの「message-resources」に設定される、
                        リソースファイルのキーと対応する。
        arg0~arg1:      valueに予め設定されている{0}~{4}と対応する。
        name,property:  keyを設定していない場合、キー値を格納されているBeanの名前、
                        Beanのプロパティ名を指定する。
     --%>
    <bean:message key="hello" /><br />
    <bean:message key="hello_who" arg0="キツネちゃん" arg1="タヌキちゃん" />
</h3>
<%=splBean_double%><br>
<%=splBean_arrays1%><br>
<%=splBean_mapKey1%><br>
<%--JavaBeanがラッパークラスの場合、property属性は省略する--%>
<% pageContext.setAttribute("sampleInteger", new Integer(5)); %>
<bean:define id="sampleInt" name="sampleInteger" />
<%=sampleInt%>

<form action="#">
    <input type="checkbox" name="discount" />
</form>
</body>
</html>