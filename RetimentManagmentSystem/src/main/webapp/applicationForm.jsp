<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String fathername = request.getParameter("fathername");
String plno = request.getParameter("plno");
String cnic = request.getParameter("cnic");
String phoneno = request.getParameter("phoneno");
String cellno = request.getParameter("cellno");
String DateBirth = request.getParameter("DateBirth");
String DateRetirment = request.getParameter("DateRetirment");
String address = request.getParameter("address");
String factory = request.getParameter("factory");
String department = request.getParameter("department");
String position = request.getParameter("position");
String service = request.getParameter("service");
String receivedDate = request.getParameter("receivedDate");

try{
	Class.forName("com.mysql.cj.jbdc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
	Statement statement=connection.createStatement();
    String query="INSERT INTO `mydb`.`reteirmentapplicationform` (`id`, `name`, `f_name`, `plno`, `CNIC`, `tellno`, `cellno`, `date_of_birth`, `retirment_date`, `address`, `factory`, `shop`, `position`, `servicefrom`, `receiveddate`) VALUES ('"+id+"', '"+name+"', '"+fathername+"', '"+plno+"', '"+cnic+"', '"+phoneno+"', '"+cellno+"', '"+DateBirth+"', '"+DateRetirment+"', '"+address+"', '"+factory+"', '"+department+"', '"+position+"', '"+service+"', '"+receivedDate+"')";
	statement.executeUpdate(query);
	response.sendRedirect("PensionCalculator.html");
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>