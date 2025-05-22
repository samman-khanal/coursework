<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
  <!-- Font Awesome for icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <title>Footer</title>
</head>
<body>

<!-- Call to Action Section -->
<section class="cta-section">
  <div class="container">
    <h2>Ready to Join Our Community?</h2>
    <p>Discover how to participate in creating lasting educational experiences and be part of the next generation of changemakers.</p>
    <a href="<%=request.getContextPath()%>/views/auth/register.jsp" class="cta-button-white">Get Started Today</a>
  </div>
</section>

<!-- Footer Section -->
<footer>
  <div class="container footer-container">
    <div class="footer-col">
      <div class="footer-logo">
        <i class="fas fa-graduation-cap"></i>
        <span>Itahari International</span>
      </div>
      <p>Committed to excellence in education and fostering a diverse learning environment.</p>
    </div>

    <div class="footer-col">
      <h4>Quick Links</h4>
      <ul>
        <li><a href="<%= request.getContextPath()%>">Home</a></li>
        <li><a href="<%= request.getContextPath()%>/views/public/about.jsp">About</a></li>
        <li><a href="<%= request.getContextPath()%>/views/public/contact.jsp">Contact</a></li>
      </ul>
    </div>

    <div class="footer-col">
      <h4>Contact Us</h4>
      <p><i class="fas fa-map-marker-alt"></i> Sundar Haraicha, Morang</p>
      <p><i class="fas fa-phone"></i> +977 987-654-3210</p>
      <p><i class="fas fa-envelope"></i> info@iic.edu.np</p>
    </div>

    <div class="footer-col">
      <h4>Follow Us</h4>
      <div class="social-links">
        <a href=""><i class="fab fa-facebook"></i></a>
        <a href=""><i class="fab fa-twitter"></i></a>
        <a href=""><i class="fab fa-instagram"></i></a>
        <a href=""><i class="fab fa-linkedin"></i></a>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <p>&copy; 2025 Itahari International College. All rights reserved.</p>
  </div>

</footer>

</body>
</html>
