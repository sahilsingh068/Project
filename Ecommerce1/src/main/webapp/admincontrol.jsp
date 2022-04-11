<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Control</title>
</head>
<body background="shopping.jpg">
<style>
 body{
 background-size:100% 160%;
 background-repeat:no-repeat;
 }
</style>
<br><br>
<form action="/adminaddseller">
<P><BR><BR><br>
<FONT COLOR="black" SIZE="4.5" >
<pre>           Admin can add Seller: <input type="submit" value="Add Seller"></pre>
</form>
<form action="/admindeleteseller">
<P><BR>
<FONT COLOR="black" SIZE="4.5" >
<pre>           Admin can delete Seller: <input type="submit" value="Remove Seller"></pre>
</form>
<form action="/viewseller">
<P><BR>
<FONT COLOR="black" SIZE="4.5" >
<pre>            Admin view Sellers: <input type="submit" value="View Sellers"></pre>
</form>
<br>

</body>
</html>