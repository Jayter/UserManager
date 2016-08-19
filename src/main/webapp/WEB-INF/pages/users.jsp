<%--
  Created by IntelliJ IDEA.
  User: Nicki
  Date: 8/17/2016
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ page session="false" %>
<html>
<head>
    <title>Users Page</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<body>
<a href="../../index.jsp">Back to welcome page</a>

<br/>
<table>
    <tr>
        <td>
            <h3>Search by id </h3>
        </td>
        <td>
            <c:url var="searchAction" value="/users/search"/>

            <form method="post" action="${searchAction}">
                <label for="id"></label>
                <input type="text" id="id" name="id" placeholder="type id"/>

                <input type="submit" value="search"/>
            </form>
        </td>
    </tr>
</table>

<h1>User List</h1>

<display:table id="user" name="listUsers" requestURI="users" pagesize="10">
    <display:column property="id" title="ID" sortable="true"/>
    <display:column property="name" title="Name" sortable="true" href="/userdata/${user.id}"/>
    <display:column property="age" title="Age" sortable="true"/>
    <display:column property="isAdmin" title="Admin" sortable="true"/>
    <display:column property="createdDate" title="Created date" sortable="true"/>
</display:table>


<h1>Add a User</h1>

<c:url var="addAction" value="/users/add"/>

<form:form action="${addAction}" commandName="user">
    <table>
        <tr>
            <td>
                <form:label path="name">
                    <spring:message text="Name"/>
                </form:label>
            </td>
            <td>
                <form:input path="name"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="age">
                    <spring:message text="Age"/>
                </form:label>
            </td>
            <td>
                <form:input path="age"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="isAdmin">
                    <spring:message text="Is Admin"/>
                </form:label>
            </td>
            <td>
                <form:input path="isAdmin"/>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <input type="submit"
                       value="<spring:message text="Add User"/>"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>