<%@ page  pageEncoding="GB18030"%>
    
    <%
String name = (String)session.getAttribute("name");
if(session.getAttribute("name")==null){
	out.print("<h3>No Login! 3s later to <a href=\"login.html\">login</a></h3>");
	response.setHeader("Refresh", "3;url=login.html");                       
}
else{
	out.print("<h1> success </h1>");
	session.getLastAccessedTime();
}
%>