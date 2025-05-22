<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <title>Header</title>
</head>
<body>
<!-- Header Navigation -->
<header>
    <div class="container header-container">
        <div class="logo">
            <i class="fas fa-graduation-cap"></i>
            <span>Itahari International College</span>
        </div>
        <nav>
            <ul>
                <li><a href="<%= request.getContextPath()%>">Home</a></li>
                <li><a href="<%= request.getContextPath()%>/views/public/about.jsp">About</a></li>
                <li><a href="<%= request.getContextPath()%>/views/public/contact.jsp">Contact</a></li>
                <li><a href="<%=request.getContextPath()%>/views/auth/login.jsp" class="login-btn">Login</a></li>
            </ul>
        </nav>
    </div>
</header>
</body>
</html>
