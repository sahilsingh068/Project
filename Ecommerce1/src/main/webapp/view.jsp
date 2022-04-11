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
ResultSet resultSet = null;

%>
    				 
<table align="center" cellpadding="2" cellspacing="2" border="1">

<tr bgcolor="#CC6AED">
<td><b>Sid</b></td>
<td><b>Sname</b></td>
<td><b>Saddress</b></td>
<td><b>Semail</b></td>
<td><b>Sno</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="Select * From seller";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DBF5E7">
<td><%=resultSet.getString("Sid") %></td>
<td><%=resultSet.getString("Sname") %></td>
<td><%=resultSet.getString("Saddress") %></td>
<td><%=resultSet.getString("Semail") %></td>
<td><%=resultSet.getString("Sno") %></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>