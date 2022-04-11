<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Update Page</title>
</head>
<body background="shopping.jpg">
<style>
 body{
 background-size:100% 160%;
 background-repeat:no-repeat;
 }
</style>
<br><br>
<h1 style="text-align:center">Update Product details</h1>

<form action="updateProduct">
<P><BR><BR><BR>
<FONT COLOR="black" SIZE="4.5" >
<pre>                         Enter Product Id: <input type="text" name="Pid"><br></pre>
<pre>                         Enter Product Name: <input type="text" name="Pname"><br></pre>
<pre>                         Enter Product Price: <input type="text" name="Pprice"><br></pre>
<pre>                         Enter Product Category: <input type="text" name="Pcategory"><br></pre>
<pre>                                        <input type="submit"></pre>

</form>
</body>
</html>