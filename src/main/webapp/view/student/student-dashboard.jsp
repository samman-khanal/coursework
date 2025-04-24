<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CEMS - Student Dashboard</title>
    <link rel="stylesheet" href="<%= request.getContextPath()%>/assets/css/studentdb.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>
<body>
<div class="container">
    <!-- Header -->
    <header class="header">
        <div class="user-info">
            <img src="<%= request.getContextPath()%>/assets/images/user.jpg" alt="Student Profile" class="avatar">
            <div class="user-details">
                <h1>Welcome, Samman Khanal</h1>
                <p>Computer Science • Year 2</p>
            </div>
        </div>
        <div class="actions">
            <button class="btn-logout">
                <i class="fas fa-sign-out-alt"></i>
                Logout
            </button>
        </div>
    </header>

    <div class="content-wrapper">
        <!-- Sidebar -->
        <div class="sidebar">
            <nav>
                <ul>
                    <li class="active">
                        <a href="<%= request.getContextPath()%>">
                            <i class="fas fa-home"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="<%= request.getContextPath()%>">
                            <i class="fas fa-calendar-check"></i>
                            <span>My Events</span>
                        </a>
                    </li>
                    <li>
                        <a href="<%= request.getContextPath()%>">
                            <i class="fas fa-search"></i>
                            <span>Browse Events</span>
                        </a>
                    </li>
                    <li>
                        <a href="<%= request.getContextPath()%>">
                            <i class="fas fa-user"></i>
                            <span>Profile</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>

        <!-- Main Content -->
        <main class="main-content">
            <!-- Stats Cards -->
            <div class="stats-cards">
                <div class="stat-card">
                    <div class="stat-info">
                        <h3>Registered Events</h3>
                        <p class="stat-value">12</p>
                    </div>
                    <div class="stat-icon blue">
                        <i class="fas fa-calendar-alt"></i>
                    </div>
                </div>
                <div class="stat-card">
                    <div class="stat-info">
                        <h3>Pending Approvals</h3>
                        <p class="stat-value">3</p>
                    </div>
                    <div class="stat-icon orange">
                        <i class="fas fa-hourglass-half"></i>
                    </div>
                </div>
                <div class="stat-card">
                    <div class="stat-info">
                        <h3>Upcoming Events</h3>
                        <p class="stat-value">5</p>
                    </div>
                    <div class="stat-icon green">
                        <i class="fas fa-calendar-day"></i>
                    </div>
                </div>
            </div>

            <!-- Upcoming Events Section -->
            <section class="events-section">
                <h2>Upcoming Events</h2>
                <div class="events-list">
                    <div class="event-card">
                        <div class="event-icon blue">
                            <i class="fas fa-laptop-code"></i>
                        </div>
                        <div class="event-details">
                            <h3>Tech Summit 2025</h3>
                            <p class="event-date">April 20, 2025 • 10:00 AM</p>
                        </div>
                        <div class="event-status approved">
                            Approved
                        </div>
                    </div>

                    <div class="event-card">
                        <div class="event-icon purple">
                            <i class="fas fa-briefcase"></i>
                        </div>
                        <div class="event-details">
                            <h3>Career Fair</h3>
                            <p class="event-date">May 2, 2025 • 9:00 AM</p>
                        </div>
                        <div class="event-status pending">
                            Pending
                        </div>
                    </div>
                </div>
            </section>

            <!-- Browse Events Section -->
            <section class="events-section">
                <div class="section-header">
                    <h2>Browse Events</h2>
                    <div class="search-filter">
                        <div class="search-box">
                            <input type="text" placeholder="Search events..." class="search-input">
                        </div>
                        <div class="filter-dropdown">
                            <select class="category-filter">
                                <option value="all">All Categories</option>
                                <option value="tech">Technology</option>
                                <option value="career">Career</option>
                                <option value="academic">Academic</option>
                            </select>
                            <i class="fas fa-chevron-down"></i>
                        </div>
                    </div>
                </div>

                <div class="events-list">
                    <div class="event-card">
                        <div class="event-icon blue">
                            <i class="fas fa-users"></i>
                        </div>
                        <div class="event-details">
                            <h3>Leadership Summit</h3>
                            <p class="event-date">May 15, 2025 • 2:30 PM</p>
                            <p class="event-venue">Main Auditorium</p>
                        </div>
                        <div class="event-action">
                            <button class="btn-register">
                                Register
                            </button>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </div>
</div>
</body>
</html>