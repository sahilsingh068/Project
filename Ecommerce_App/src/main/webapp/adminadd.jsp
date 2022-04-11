<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding Admin</title>
</head>
<body background="shopping.jpg">
<style>
 body{
 background-size:100% 160%;
 background-repeat:no-repeat;
 }
</style>
<br><br>
<h1 style="text-align:center">Admin Details</h1>

<form action="/addingAdmin">
<P><BR><BR><BR>
<FONT COLOR="black" SIZE="4.5" >
<pre>             Enter Admin Id: <input type="text" name="Aid"><br></pre>
<pre>             Enter Admin Name: <input type="text" name="Aname"><br></pre>
<pre>             Enter Admin Address: <input type="text" name="Aaddress"><br></pre>
<pre>             Enter Admin Email: <input type="text" name="Aemail"><br></pre>
<pre>             Enter Admin Phone Number: <input type="text" name="Ano"><br><br></pre>
<pre>             Enter Admin Password: <input type="password" name="Apassword"><br><br></pre>
<pre>                            <input type="submit" value="Submit"></pre>
</form>
</body>
</html>