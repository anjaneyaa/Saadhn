<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Showing Result</title>
<style>
    body {
	margin: 0px;
	padding: 50px;
	color: #333;
	font-family: Tahoma, Geneva, sans-serif;
	font-size: 13px;
	line-height: 1.7em; 
	background-color: #1bb720;
	background-image: url(images/back.jpg);
	background-repeat: repeat
}
h1{
    color:aqua;
    text-align: center;
}
table{
    color:royalblue;
    background-color: whitesmoke;
}

.t{
    font-size: 16px;
    text-align: center;
    color:deeppink;
}

</style>
</head>
<body>


<h1>Welcome The list of Banks</h1>
<h3><a href="index.jsp">Home</a></h3>
<table style"
border=3;
width=1300px;
">
 	<tr class="t">
 		<td>Ifsc Code</td><td>Bank_Name</td><td>Address</td><td>Contacts</td><td>City</td>
 	</tr>
 	<% 
 	String location =request.getParameter("location");
 	%>
 	<h1>You searched for the list of Banks in <%=location %> ...!</h1>
 	<%
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/book","root","anjani");
		
		//o.print("connected");
		String q="Select * from banks where city='"+location+"'";
		PreparedStatement pst=con.prepareStatement(q);
		
		ResultSet rs=pst.executeQuery(q);
		
		while(rs.next())
		{	String IfscNo=rs.getString("ifscNo");		
			String BankName=rs.getString("BankName");
			String address=rs.getString("address");
			String contact=rs.getString("contacts");
			String city=rs.getString("city");
			
			%>	
 	<tr>
 		<td><%=IfscNo%></td><td><%=BankName%></td><td><%=address%></td><td><%=contact%></td><td><%=city%></td>
 	</tr>
			
			<%
			
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
		//o.print(e.getMessage());
	}
	

		
 	
 	%>
</table>
</body>
</html>