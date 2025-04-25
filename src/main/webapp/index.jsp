<%@ page language= "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Itahari International College</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/index.css">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
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
                <li><a href="<%= request.getContextPath()%>/common/about.jsp">About</a></li>
                <li><a href="#<%= request.getContextPath()%>">Courses</a></li>
                <li><a href="<%= request.getContextPath()%>/view/login.jsp" class="login-btn">Login</a></li>
            </ul>
        </nav>
    </div>
</header>

<!-- Hero Section -->
<section class="hero">
    <div class="hero-content">
        <h1>Welcome to Evergreen College</h1>
        <p>A transformative educational experience for students centered around innovation, diversity, collaboration and academic excellence.</p>
        <a href="<%= request.getContextPath()%>../view/register.jsp" class="cta-button">Register Now</a>
    </div>
</section>
<!-- Vision & Mission Section -->
<section class="vision-mission">
    <div class="container">
        <h2>Our Vision & Mission</h2>
        <p>At Itahari International College, we believe in education's power to bring change through academic excellence, innovation, engagement and community. We're dedicated to nurturing individuals who contribute to society's wellbeing.</p>

        <div class="stats-container">
            <div class="stat-box">
                <i class="fas fa-calendar-alt"></i>
                <h3>SINCE 2017</h3>
                <p>Providing quality education for over 7 years</p>
            </div>
            <div class="stat-box">
                <i class="fas fa-users"></i>
                <h3>15000+ STUDENTS</h3>
                <p>With an international community</p>
            </div>
            <div class="students-image">
                <img src="<%= request.getContextPath()%>" alt="Diverse students at Evergreen College">
            </div>
        </div>
    </div>
</section>
<!-- Featured Events Section -->
<section class="featured-events">
    <div class="container">
        <h2>Featured Events</h2>
        <div class="events-container">
            <!-- Event 1 -->
            <div class="event-card">
                <img src="<%= request.getContextPath()%>" alt="TechFest 2025">
                <div class="event-details">
                    <span class="event-date"><i class="far fa-calendar"></i> March 15, 2025</span>
                    <h3>TechFest 2025</h3>
                    <p>Annual technology exhibition featuring student projects, industry experts and innovative solutions.</p>
                    <a href="<%= request.getContextPath()%>/index.jsp" class="learn-more">Learn More</a>
                </div>
            </div>
            <!-- Event 2 -->
            <div class="event-card">
                <img src="<%= request.getContextPath()%>" alt="Cultural Fest">
                <div class="event-details">
                    <span class="event-date"><i class="far fa-calendar"></i> April 10, 2025</span>
                    <h3>Cultural Fest</h3>
                    <p>Celebration of diversity through dance, music, art and cultural performances from around the world.</p>
                    <a href="<%= request.getContextPath()%>/index.jsp" class="learn-more">Learn More</a>
                </div>
            </div>
            <!-- Event 3 -->
            <div class="event-card">
                <img src="<%= request.getContextPath()%>" alt="Sports Meet">
                <div class="event-details">
                    <span class="event-date"><i class="far fa-calendar"></i> May 5, 2025</span>
                    <h3>Sports Meet</h3>
                    <p>Annual athletics competition featuring track events, team sports and individual competitions.</p>
                    <a href="<%= request.getContextPath()%>/index.jsp" class="learn-more">Learn More</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Call to Action Section -->
<section class="cta-section">
    <div class="container">
        <h2>Ready to Join Our Community?</h2>
        <p>Discover how to participate in creating lasting educational experiences and be part of the next generation of changemakers.</p>
        <a href="<%= request.getContextPath()%>/view/register.jsp" class="cta-button-white">Get Started Today</a>
    </div>
</section>

<!-- Footer -->
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
                <li><a href="<%= request.getContextPath()%>/common/about.jsp">About</a></li>
                <li><a href="<%= request.getContextPath()%>">Courses</a></li>
                <li><a href="<%= request.getContextPath()%>">Campus</a></li>
                <li><a href="<%= request.getContextPath()%>">Contact</a></li>
            </ul>
        </div>

        <div class="footer-col">
            <h4>Contact Us</h4>
            <p><i class="fas fa-map-marker-alt"></i> 123 College Ave, City, State</p>
            <p><i class="fas fa-phone"></i> (555) 123-4567</p>
            <p><i class="fas fa-envelope"></i> info@evergreen.edu</p>
        </div>

        <div class="footer-col">
            <h4>Follow Us</h4>
            <div class="social-links">
                <a href="<%= request.getContextPath()%>"><i class="fab fa-facebook"></i></a>
                <a href="<%= request.getContextPath()%>"><i class="fab fa-twitter"></i></a>
                <a href="<%= request.getContextPath()%>"><i class="fab fa-instagram"></i></a>
                <a href="<%= request.getContextPath()%>"><i class="fab fa-linkedin"></i></a>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2025 Itahari International College. All rights reserved.</p>
    </div>
</footer>
</body>
</html>
