<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "java.sql.*" %>
<%
String username = request.getParameter("username");
String pwd = request.getParameter("pwd");

try
{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin", "root", "root");
	 Statement st = conn.createStatement();

	 ResultSet rs = st.executeQuery("select * from writer where  username='" +username+ "' and pwd='"+pwd+"'");

	 if(rs.next())

	 {
	 response.sendRedirect("index.html"); 
	 }

	 else
	 response.sendRedirect("error.jsp");

	 rs.close();

	 st.close(); 

	 }

	 catch(SQLException sqe)

	 {

	 out.println(sqe);

	 } 

	 %>

</body>
</html>