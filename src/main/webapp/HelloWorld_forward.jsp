<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<bean:define id="splBean_double" name="bean1" property="doubleNum" />
<%--配列やリストの場合、プロパティ名[インデックス]--%>
<bean:define id="splBean_arrays1" name="bean1" property="arrays[1]" />
<%--マップの場合、プロパティ名.キー--%>
<bean:define id="splBean_mapKey1" name="bean1" property="map.key1" />

<html>
<head>
</head>
<body>
<h1><bean:write name="helloWorldForm" property="message" />
</h1>
<h2>Bean test</h2>
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