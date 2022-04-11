<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Delete Page</title>
</head>
<body background="shopping.jpg">
<style>
 body{
 background-size:100% 160%;
 background-repeat:no-repeat;
 }
</style>
<br><br>
<h1 style="text-align:center">Delete Product</h1>

<form action="/deleteProduct">
<P><BR><BR><BR>
<FONT COLOR="bl;ack" SIZE="4.5" >
<pre>              Enter the id of product that you want to delete: <input type="text" name="id"><br></pre>
<pre>                                        <input type="submit"></pre>
</form>
</body>
</html>