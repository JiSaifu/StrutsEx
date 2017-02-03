<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<html:html lang="true">
<head>
    <meta charset="UTF-8">
</head>
<body>
<html:form action="menu.do" method="post">
    user id:
    <html:text property="userid" size="50" /><br />
    <%--
        logic:presentタグに関する説明：
            http://www.techscore.com/tech/Java/ApacheJakarta/Struts/9-3/
            クッキー／HTTPヘッダー／リクエスト値／Java Beanのプロパティ値が存在するかどうかの判定を行います。
            presentタグは存在した場合にボディ部を実行し、notPresentタグは存在しなかった場合に実行します。
            属性説明：
                name:       Java Beanをスコープから検索するためのキー。
                            property属性が省略された場合には、この値で検索されたJava Beanが比較対象となります。
                property:   比較対象となるJava Beanのプロパティ。
                scope:      Java Beanが存在するスコープを指定。
                            指定しなかった場合は、全てのスコープから検索されます。
                cookie:     比較対象となるクッキーのパラメータ名。
                parameter:  比較対象となるHTTPリクエストのパラメータ名。
                header:     比較対象となるHTTPヘッダーのパラメータ名。

                value:      文字列を指定。
                location:   「start」を指定した場合は、指定した文字列は先頭に表れなければならない。
                            「end」を指定した場合は、文字列は最後に表れなければならない。
                            省略した場合は、文字列はどこに現れても構わない。
                またpresentタグ／notPresentタグは、認証に関する機能も提供しています。
                user:       認証されたユーザの名前が指定の値であった場合に、ボディ部が実行されます。
                role:       認証されたユーザが指定のRoleに関連付けられている場合、ボディ部が実行されます。
                            カンマで区切って、複数のRoleを指定する事も可能です。
    --%>
    <logic:present name="userid">
        useridとの属性は存在する<br />
        <%--
            logic:emptyタグに関する説明：
                http://www.techscore.com/tech/Java/ApacheJakarta/Struts/9-2/
                emptyタグ／notEmptyタグは、特定のJava BeanまたはJava Beanのプロパティ値が
                ・null
                ・空文字列
                ・要素数0のコレクション
                であるかどうか判定するタグです。
                属性説明：
                    name:       Java Beanをスコープから検索するためのキー。
                                property属性が省略された場合には、この値で検索されたJava Beanが比較対象となります。
                    property:   比較対象となるJava Beanのプロパティ。
                    scope:      Java Beanが存在するスコープを指定。
                                指定しなかった場合は、全てのスコープから検索されます。
        --%>
        <logic:empty name="userid">
            useridは空です<br />
        </logic:empty>
        <logic:notEmpty name="userid">
            useridは空ではありません<br />
            <%--
                logic:matchタグに関する説明：
                    http://www.techscore.com/tech/Java/ApacheJakarta/Struts/9-1/
                    クッキー／HTTPヘッダー／HTTPリクエスト値／Java Beanのプロパティ値が指定した文字列を、
                    含んでいるかどうか判定するタグです。matchタグは含んでいた場合にタグのボディ部を処理し、
                    notMatchタグは含んでいなかった場合に処理します。
                    属性説明：
                        name:       Java Beanをスコープから検索するためのキー。
                                    property属性が省略された場合には、この値で検索されたJava Beanが比較対象となります。
                        property:   比較対象となるJava Beanのプロパティ。
                        scope:      Java Beanが存在するスコープを指定。
                                    指定しなかった場合は、全てのスコープから検索されます。
                        cookie:     比較対象となるクッキーのパラメータ名。
                        parameter:  比較対象となるHTTPリクエストのパラメータ名。
                        header:     比較対象となるHTTPヘッダーのパラメータ名。

                        value:      文字列を指定。
                        location:   「start」を指定した場合は、指定した文字列は先頭に表れなければならない。
                                    「end」を指定した場合は、文字列は最後に表れなければならない。
                                    省略した場合は、文字列はどこに現れても構わない。
            --%>
            <logic:match name="userid" value="maodoudou" location="start">
                useridの頭はmaodoudouです<br />
            </logic:match>
            <logic:match name="userid" value="maodoudou" location="end">
                useridの末尾はmaodoudouです<br />
            </logic:match>
            <logic:match name="userid" value="maodoudou">
                useridにmaodoudouとの文字列が存在しています<br />
            </logic:match>
        </logic:notEmpty>
    </logic:present>
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