<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Student's Kitchen</title>
</head>
<body>

	
<table cellspacing="1" cellpadding="1" border="0" width="300" bgcolor="#F4F6F7">
<tr bgcolor="#EEEEEE">
<td align="center">No</td>
<td align="center">Name</td>
<td align="center">Mobile Number</td>
<td align="center">Email</td>
<td align="center">Date</td>
<td align="center">Time</td>
<td align="center">noPax</td>
<td align="center">bookingNo</td>
<td> </td>
<td></td>
</tr>
<% 
           String sql = "";
           int count = 0;
           Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp?autoReconnect=true&useSSL=false","username","password");
           sql="SELECT * FROM reservation";
           Statement statement = con.createStatement();                
           ResultSet resultSet = statement.executeQuery(sql);
           
           while (resultSet.next()){
        	   count++;
        
           String user_name = resultSet.getString("name");
        	 int noHandphone = resultSet.getInt("noHp");
        	 String user_email = resultSet.getString("email");
           String user_date = resultSet.getString("date");
           String user_time = resultSet.getString("time");
           String user_time = resultSet.getString("noPax");
           String user_time = resultSet.getString("bookingNo");
            
%>
<tr bgcolor="#FFFFFF">
<td align="center"><%= name %></td>
<td align="center"><%= noHp %></td>
<td align="center"><%= email %></td>
<td align="center"><%= date %></td>
<td align="center"><%= time %></td>
<td align="center"><%= noPax %></td>
<td align="center"><%= bookingNo %></td>

</tr>
<% 	 
           }
           statement.close();
           con.close();
        
    
 %>
 
 
 </table>


<br><br>


<a href=".jsp"></a>


<%
String msg = request.getParameter("msg");
if(msg!=null && msg.equals("1")){%>
There is an error! Please check !	
<%	
}
%>
</body>
</html>
