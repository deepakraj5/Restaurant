<%@page import ="java.sql.*"%>
<%
String firstName = request.getParameter("fname");
String lastName = request.getParameter("lname");
String userName = request.getParameter("uname");
String mailID = request.getParameter("mail");
String password = request.getParameter("psw");

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sandy","root","sandy");
	Statement stmt = con.createStatement();
	stmt.executeUpdate("insert into registerForm values('"+firstName+"','"+lastName+"','"+userName+"','"+mailID+"','"+password+"')");
	response.sendRedirect("home.html");
}
catch(Exception e){
	out.println(e);
}

%>
