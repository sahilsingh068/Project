 <%@ page import="com.ecom.controller.*" %>
    <%@ page import="com.ecom.entity.Seller" %>
    <%@ page import="java.sql.*" %>
    
<%
String driverName = "org.postgresql.Driver";
String connectionUrl = "jdbc:postgresql://localhost/";
String dbName = "sweetyj68";
String userId = "postgres";
String password = "Sweety0608@";

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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="shopping.jpg">
<style>
 body{
 background-size:100% 140%;
 background-repeat:no-repeat;
 }
</style>
<br><br><br>
<form action="/adminloggedin">
<P><BR><BR><BR>
<FONT COLOR="black" SIZE="5" >
<pre>                                                You are LogIn successfully.... 
                                                Click on submit to proceed further<br>
                                                               <input type="submit" value="submit">
</pre>
</form>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
statement2=connection.createStatement();
String aid = request.getParameter("Aid");
String aemail=request.getParameter("Aemail");
String apass = request.getParameter("Apassword");
resultSet2 = statement.executeQuery("select * from admin where aid='" + aid + "'");
System.out.println(aid+"------------------");
System.out.println(apass+"------------------");

while(resultSet2.next())
{
	if (resultSet2.getString("Apassword").equals(apass) && resultSet2.getString("Aemail").equals(aemail))
	{
		System.out.println("You are logged in");
	}
	else
	{
		System.out.println("Invalid email or password");
		response.sendRedirect("loginadmin.jsp");
	}
	}


%>
<%


} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>