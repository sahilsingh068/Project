<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.ecom.controller.*" %>
    <%@ page import="com.ecom.entity.Seller" %>
    <%@ page import="java.sql.*" %>
    
<%
String driverName = "org.postgresql.Driver";
String connectionUrl = "jdbc:postgresql://localhost/";
String dbName = "project1";
String userId = "postgres";
String password = "abc123";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
Statement statement2 = null;
ResultSet resultSet = null;
ResultSet resultSet2 = null;

%>
<html>
<head>
</head>
<body>
<form action="/placeorder"> 
Enter id for the product that you want to order
<input type="text" name="id"> 
<input type="submit" id ="b1" value="Place Order" onclick="placeorder();">
</form>  
<form action="/vieworders">
<input type="submit" value="View Orders">
</form>			 
<table align="center" cellpadding="2" cellspacing="2" border="1">

<tr bgcolor="#CC6AED">
<td><b>Pid</b></td>
<td><b>Pname</b></td>
<td><b>Pprice</b></td>
<td><b>Pcategory</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
statement2=connection.createStatement();
String sql ="Select * From product";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>
<tr bgcolor="#DBF5E7">
<td><%=resultSet.getString("Pid") %></td>
<td><%=resultSet.getString("Pname") %></td>
<td><%=resultSet.getString("Pprice") %></td>
<td><%=resultSet.getString("Pcategory") %></td>


</tr>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<script type="text/javascript">

	document.getElementById("b1").onclick=placeorder;
	
					function placeorder()
					{	
						alert("Order is placed");
					};

</script>
</body>
</html>
