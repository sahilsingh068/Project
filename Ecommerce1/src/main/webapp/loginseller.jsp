 <%@ page import="com.ecom.controller.*" %>
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
ResultSet resultSet3 = null;

%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/sellerloggedin">
<input type="submit" value="Log In">
</form>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
statement2=connection.createStatement();
String sid = request.getParameter("Sid");
String semail=request.getParameter("Semail");
String spass = request.getParameter("Spassword");
resultSet3 = statement.executeQuery("select * from seller where sid='" + sid + "'");
System.out.println(sid+"------------------");
System.out.println(semail+"------------------");
System.out.println(spass+"------------------");

while(resultSet3.next())
{
	if (resultSet3.getString("Spassword").equals(spass) && resultSet3.getString("Semail").equals(semail))
	{
		System.out.println("You are logged in");
	}
	else
	{
		System.out.println("Invalid email or password");
		response.sendRedirect("sellerlogin.jsp");
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