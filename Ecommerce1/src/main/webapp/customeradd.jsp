<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding Customer Details</title>
</head>
<body background="shopping.jpg">
<style>
 body{
 background-size:100% 160%;
 background-repeat:no-repeat;
 }
</style>
<br><br>
<h1 style="text-align:center">Customer Details</h1>>

<form action="addingCustomer">
<P><BR><BR><BR>
<FONT COLOR="black" SIZE="4.5" >
<pre>                  Enter Customer Id: <input type="text" name="Cid"><br></pre>
<pre>                  Enter Customer Name: <input type="text" name="Cname"><br></pre>
<pre>                  Enter Customer Address: <input type="text" name="Caddress"><br></pre>
<pre>                  Enter Customer Email: <input type="text" name="Cemail"><br></pre>
<pre>                  Enter Customer Phone Number: <input type="text" name="Cno"><br></pre>
<pre>                  Enter Customer Password: <input type="password" name="Cpassword"><br></pre>
<pre>                                  <input type="submit" value="Add Customer"></pre>
</form>
</body>
</html>