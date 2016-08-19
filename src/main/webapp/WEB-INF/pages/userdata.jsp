<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
  <title>UserData</title>

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
      border-style: solid;
      border-width: 1px;
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
      border-style: solid;
      border-width: 1px;
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
<h1>User Details</h1>
<br/>
<a href="<c:url value="/users"/>">Back</a>
<br/>
<table class="tg">
  <tr>
    <th width="80">ID</th>
    <th width="120">Name</th>
    <th width="60">Age</th>
    <th width="60">Is Admin</th>
    <th width="120">Created Date</th>
    <th width="60">Delete User</th>

  </tr>
  <tr>
    <td>${user.id}</td>
    <td>${user.name}</td>
    <td>${user.age}</td>
    <td>${user.isAdmin}</td>
    <td>${user.createdDate}</td>
    <td><a href="/remove/${user.id}">Delete</a></td>
  </tr>
</table>
<br/>

<h2>Edit a User</h2>

<c:url var="editAction" value="/users/add"/>

<form:form action="${editAction}" commandName="user">
  <table>
    <tr>
      <td>
        <form:label path="id">
          <spring:message text="ID"/>
        </form:label>
      </td>
      <td>
        <form:input path="id" readonly="true" size="8" disabled="true"/>
        <form:hidden path="id"/>
      </td>
    </tr>
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
               value="<spring:message text="Edit User"/>"/>
      </td>
    </tr>
  </table>
</form:form>
</body>
</html>