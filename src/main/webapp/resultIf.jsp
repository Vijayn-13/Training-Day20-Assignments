<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="jakarta.servlet.http.HttpServlet"%>
<%@page import="jakarta.servlet.http.HttpServletResponse"%>
<%@page import="jakarta.servlet.http.HttpServletRequest"%>
<%@page import="jakarta.servlet.RequestDispatcher"%>
<html>
<body>
<c:if test="${isLoggedIn}">
    <h2>Welcome, ${name}!</h2>
</c:if>
<c:if test="${!isLoggedIn}">
    <h2>Login first by click the below link...</h2>
    <h2><a href="ifTag.jsp">Login</a></h2>
</c:if>
</body>
</html>
