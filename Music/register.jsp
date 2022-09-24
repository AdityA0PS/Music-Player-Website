<%@ page import="java.sql.*" %>
<%
String s1, s2, s3;

Statement st;
Connection con;
int i;
i=0;
try
{
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");

con=DriverManager.getConnection("jdbc:ucanaccess://C:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/Music/Database1");
st=con.createStatement();

s1=request.getParameter("username");

s2=request.getParameter("email");
s3=request.getParameter("password");
String s="insert into projectdata (eusername, eemail, epassword) values('"+s1+"','"+s2+"','"+s3+"')";

st.executeUpdate(s);
st.close();
con.close();
out.println("Register Successuful");
out.println("<a href='login.html'>Jump to login page..</a>");
}
catch(Exception e)
{
out.println(e);
}
%>