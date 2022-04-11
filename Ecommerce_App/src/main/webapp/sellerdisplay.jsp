<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seller Functions Page</title>
</head>
<body background="shopping.jpg">
<style>
 body{
 background-size:100% 160%;
 background-repeat:no-repeat;
 }
</style>
<br><br>
<h1 style="text-align:center">Add Update and Remove Seller</h1>
>
<form action="/addseller">
<P><BR><BR><BR>
<FONT COLOR="black" SIZE="4.5" >
<pre>                       Press to add seller: <input type="submit" value="AddSeller"></pre>
</form>

<form action="/updateseller">
<P><BR>
<FONT COLOR="black" SIZE="4.5" >
<pre>                       Press to update seller: <input type="submit" value="UpdateSeller"></pre>
</form>

<form action="/deleteseller">
<P><BR>
<FONT COLOR="black" SIZE="4.5" >
<pre>                       Press to delete seller: <input type="submit" value="DeleteSeller"></pre>
</form>
</body>
</html>