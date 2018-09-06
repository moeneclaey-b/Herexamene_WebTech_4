<%--
  Created by IntelliJ IDEA.
  User: bartm
  Date: 6/09/2018
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language='java' contentType='text/html; charset=UTF-8'
         pageEncoding='UTF-8'%>
<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>
<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<html>
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

    <title>Joke List</title>
</head>

<body>

<div class='well'>
    <h1>Joke List</h1>
    <br/><br/>
    <table  class='table'>
        <tr>
            <th>First name</th>
            <th>Last name</th>
            <th>Joke</th>
        </tr>
        <c:if test='${not empty jokes}'>
            <c:forEach var='joke' items='${jokes}'>
                <tr><td>${joke.firstName}</td><td>${joke.lastName}</td><td>${joke.joke}</td></tr>
            </c:forEach>
        </c:if>
    </table>

    <br/><br/>
    <a href='/Joke'>Generate a joke</a>
</div>

</body>
</html>
