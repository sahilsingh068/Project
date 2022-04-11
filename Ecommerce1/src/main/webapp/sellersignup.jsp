<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding Seller Page</title>
</head>
<body background="shopping.jpg">
<style>
 body{
 background-size:100% 160%;
 background-repeat:no-repeat;
 }
</style>
<br><br>
<h1 style="text-align:center">Add Seller Details</h1>

<form action="sellersignin">
<P><BR><BR><BR>
<FONT COLOR="black" SIZE="4.5" >
<pre>                       Enter Seller Id: <input type="text" name="Sid"><br></pre>
<pre>                       Enter Seller Name: <input type="text" name="Sname"><br></pre>
<pre>                       Enter Seller Address: <input type="text" name="Saddress"><br></pre>
<pre>                       Enter Seller Email: <input type="text" name="Semail"><br></pre>
<pre>                       Enter Seller Phone Number: <input type="text" name="Sno"><br><br></pre>
<pre>                       Enter Seller Password: <input type="password" name="Spassword"><br><br></pre>
<pre>                                  <input type="submit" value="Sign Up">
</form>
</body>
</html>