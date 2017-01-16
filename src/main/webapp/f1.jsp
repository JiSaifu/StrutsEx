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
    <logic:iterate id="tree" name="ptbTree" >
        <html:radio idName="tree" property="radio" value="key" />
        <bean:write name="tree" property="value.col1" />
    </logic:iterate>
    <input type="submit" value="Submit" />
</html:form>
</body>
</html>