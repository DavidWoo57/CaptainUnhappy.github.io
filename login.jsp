<%@ page pageEncoding="GB18030"%>
﻿<%
String name = request.getParameter("name");
String pw = request.getParameter("pw");
if (name != null && pw != null && name.equals("admin") && pw.equals("123")) {
	response.sendRedirect("success.jsp");
	session.setAttribute("name", name);
} else {
	out.print("<h3>Wrong! 3s later to <a href=\"login.html\">login</a></h3>");
	response.setHeader("Refresh", "3;url=login.html");
}
%>