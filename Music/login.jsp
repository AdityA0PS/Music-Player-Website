<%@ page import="java.sql.*" %>
<%
String s1,s3,user,pass;
Statement st;
Connection con;
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
con=DriverManager.getConnection("jdbc:ucanaccess://C:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/Music/Database1.accdb");
st=con.createStatement();
String s="select * from projectdata ";
ResultSet rs=st.executeQuery(s);
user=request.getParameter("username");
pass=request.getParameter("password");
int i=0,j=0,k=0;


while(rs.next())
{
s1=rs.getString("eusername");
s3=rs.getString("epassword");
if( s1.equals(user) && s3.equals(pass))
{
	
	response.sendRedirect("home.html");
i++;
j=0;
break;
}


}
if(j>0)
{
	out.println("<h1>"+"You Entered wrong password"+"</h1>");
}
if(i==0)
{
	out.println("sorry!!you havent registered yet");

}

%>
