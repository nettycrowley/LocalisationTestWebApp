<%@ page language="java" contentType="text/html; charset=ISO-8859-1;"
	pageEncoding="UTF-8"%>
<%@ page import="ie.rccourse.*, java.util.*" %>

<%
	
	String lang = request.getParameter("lang");
	if (lang ==null) {
		lang="en";
	}
	String country = request.getParameter("country");
	Locale locale;
	if (country != null) {
		locale = new Locale(lang, country);
	} else {
		locale = new Locale(lang);
	}
	
	LocalMessages lm = new LocalMessages(locale);
	String username = "Aidan"; 
%>
<html>
<body>
<div>
	<ul>
		<li><a href="index.jsp?lang=en&country=GB">English</a>
		<li><a href="index.jsp?lang=fr">French</a>
		<li><a href="index.jsp?lang=de">German</a>
		<li><a href="index.jsp?lang=en">American</a>
		<li><a href="index.jsp?lang=ga">Irish</a>
	</ul>
</div>


<h2><%=String.format(lm.getMessage("greeting"),username) %></h2>

<%=lm.getMessage("prompt") %>
</body>
</html>
