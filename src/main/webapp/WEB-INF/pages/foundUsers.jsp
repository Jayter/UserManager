<%--
  Created by IntelliJ IDEA.
  User: Nicki
  Date: 8/22/2016
  Time: 5:34 AM
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

<h1>User List</h1>

<br/>

<a href="<c:url value="/users"/>">Back</a>

<br/>
<br/>

<display:table id="user" name="listUsersByName" requestURI="users" pagesize="10">
    <display:column property="id" title="ID" sortable="true"/>
    <display:column property="name" title="Name" sortable="true" href="/userdata/${user.id}"/>
    <display:column property="age" title="Age" sortable="true"/>
    <display:column property="isAdmin" title="Admin" sortable="true"/>
    <display:column property="createdDate" title="Created date" sortable="true"/>
</display:table>


</body>
</html>