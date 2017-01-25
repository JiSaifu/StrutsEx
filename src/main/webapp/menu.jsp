<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html:html lang="true">
<head>
    <meta charset="UTF-8">
</head>
<body>
<html:form action="menu.do" method="post">
    user id:
    <html:text property="userid" size="50" /><br />
    Country List：<br />
    <html:select  name="menuForm" property="selCountry" size="3" multiple="true">
        <%--
            html:optionsタグに関する説明：
                いくつかの属性グループで分けられている
                CountryList(1)：
                1-1.collection:Collectionをスコープから検索する際のキー
                1-2.property:値が格納されるプロパティ
                1-3.labelProperty:表示テキストが格納されるプロパティ

                CountryList(2)：
                2-1.name：値JavaBeanをスコープから検索するキー
                2-2.property：値が格納されるプロパティ
                ※ 表示テキストの値はpropertyに格納するものと同様

                CountryList(3)：
                3-1.name：値JavaBeanをスコープから検索するキー
                3-2.property：値が格納されるプロパティ
                3-3.labelName：表示テキストJavaBeanをスコープから検索するキー
                3-4.labelProperty：表示テキストが格納されるプロパティ
        --%>
        <%-- CountryList(1) --%>
        <html:options collection="countryList" property="value" labelProperty="label" />
        <%-- CountryList(2)（非表示） --%>
        <%--<html:options name="countryBean" property="country" />--%>
        <%-- CountryList(3) --%>
        <html:options name="countryBean" property="country" labelName="countryBean" labelProperty="countryLabel" />
    </html:select><br />
    <html:select name="menuForm" property="selLang" size="2" multiple="false">
        <%--
            html:optionsCollectionタグに関する説明：
                property:   Collectionを返すJavaBeanのプロパティ
                name:       Java Beanをスコープから検索するためのキー。
                            この属性が指定されていない場合には、ActionForm Beanが使用される。
                value:      パラメータ値が格納されているJava Bean（Collection内にある）のプロパティ。
                            省略した場合には、デフォルト値として「value」が使用される
                label:      表示するテキストが格納されているJava Bean（Collection内になる）のプロパティ。
                            省略した場合には、デフォルト値として「label」が使用される。
        --%>
        <html:optionsCollection property="langList" />
    </html:select>
    <%--
        html:linkタグの属性説明：
            href:       <a><frame>のhref属性と同じで、相対パス・絶対パスによってリンク先を指定します。
            forward:    struts設定ファイルのglobal-forwardsからリンク先を検索します。
            page:       Webアプリケーションルートからの絶対パスでリンク先を指定します。

            パラメータ指定に関する属性：
                ・パラメータは１つの場合：
                paramId:        指定するパラメータの名前
                paramName:      Java Beanをスコープから検索する際のキー。
                                次のparamProperty属性が指定されない場合は、検索値はJava BeanではなくStringとみなして、
                                パラメータの値として使用される。
                paramProperty:  パラメータの値が入っているJava Beanのプロパティ名。
                ・パラメータは複数の場合：
                name:           Java Beanをスコープから検索する際のキーを指定。
                                Java BeanはMapをプロパティとして持っている必要があります。
                                また次のproperty属性を省略した場合には、検索値はJava Beanではなく、Mapとみなして使用されます。
                property:       Mapが入っているJava Beanのプロパティ名を指定。
                                Mapにはパラメータの名前と値が対になって格納されている必要があります。
    --%>
    <html:link href="http://www.google.com">Google</html:link>
    <html:link page="/login.jsp">Logout</html:link>
    <html:link page="/login.jsp" name="linkParam">Link Parameter Test</html:link>
    <html:submit property="submit" value="Submit" />
</html:form>
</body>
</html:html>