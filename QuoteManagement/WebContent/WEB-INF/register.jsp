
<%@ page import = "java.sql.*" %>
<%
String Id = request.getParameter("Id");
String Firstname = request.getParameter("Firstname");
String Lastname = request.getParameter("Lastname");
String Email = request.getParameter("Email");
String username = request.getParameter("username");
String pwd = request.getParameter("pwd");

try
{
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin", "root", "root");
	 PreparedStatement ps = conn.prepareStatement("insert into writers (Id, Firstname, Lastname, Email, username, pwd) values(?,?,?,?,?,?)" );
	 ps.setString(1, Id);
	 ps.setString(2, Firstname);
	 ps.setString(3, Lastname);
	 ps.setString(4, Email);
	 ps.setString(5, username);
	 ps.setString(6, pwd);
	 
	 int x = ps.executeUpdate();
	 
	 if(x > 0)
	 {
		 System.out.println("Resgistration Done Successfully...");
		 response.sendRedirect("adminLogin.html");

	 }
	 else
	 {
System.out.println("Registration Failed...");
		 
	 }
	 
}
catch(Exception e)
{
	out.println(e);
}

%>