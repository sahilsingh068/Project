<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Functions Page</title>
</head>
<body background="shopping.jpg">
<style>
 body{
 background-size:100% 160%;
 background-repeat:no-repeat;
 }
</style>
<br><br>
<h1 style="text-align:center">Add Update and Remove Product</h1>

<form action="/add">
<P><BR><BR><BR>
<FONT COLOR="black" SIZE="4.5" >
<pre>                        Press to add product: <input type="submit" value="AddProduct"></pre>
</form>

<form action="/update">
<P><BR>
<FONT COLOR="black" SIZE="4.5" >
<pre>                        Press to update product: <input type="submit" value="UpdateProduct"></pre>
</form>

<form action="/delete">
<P><BR>
<FONT COLOR="black" SIZE="4.5" >
<pre>                        Press to delete product: <input type="submit" value="DeleteProduct"></pre>
</form>
</body>
</html>