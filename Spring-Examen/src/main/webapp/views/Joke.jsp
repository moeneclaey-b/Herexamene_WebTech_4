<%--
  Created by IntelliJ IDEA.
  User: bartm
  Date: 6/09/2018
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page language='java' contentType='text/html; charset=UTF-8'
         pageEncoding='UTF-8'%>
<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>

<html>
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>

    <title>Generate a joke</title>
</head>

<body>

<div class='well'>
    <h1>Generate a joke</h1>
    <br/>
    <form method=POST action='joke' onsubmit='return validate()'>
        <div class='form-group row'>
            <div class='col-xs-4'>
                <label for='firstName'>First Name : </label>
                <input type='text' class='form-control' name='firstName' id='firstName'>
            </div>
        </div>
        <div class='form-group row'>
            <div class='col-xs-4'>
                <label for='lastName'>Last Name : </label>
                <input type='text' class='form-control' name='lastName' id='lastName'>
            </div>
        </div>

        <input type=SUBMIT value='Generate joke'>
    </form>
</div>

<br/><br/>
<a href='/list'>List all jokes</a>
</div>

</body>
</html>
