 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CEMS - Admin Dashboard</title>
    <link rel="stylesheet" href="<%= request.getContextPath()%>/assets/css/admindb.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>
<body>
<div class="container">
    <!-- Sidebar -->
    <div class="sidebar">
        <div class="logo">
            <i class="fas fa-graduation-cap"></i>
            <span>College Admin</span>
        </div>
        <ul class="nav-links">
            <li class="active">
                <a href="<%= request.getContextPath()%>">
                    <i class="fas fa-chart-line"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li>
                <a href="<%= request.getContextPath()%>">
                    <i class="fas fa-calendar-alt"></i>
                    <span>Events</span>
                </a>
            </li>
            <li>
                <a href="<%= request.getContextPath()%>">
                    <i class="fas fa-clipboard-list"></i>
                    <span>Registrations</span>
                </a>
            </li>
            <li>
                <a href="<%= request.getContextPath()%>">
                    <i class="fas fa-user-friends"></i>
                    <span>Users</span>
                </a>
            </li>
            <li>
                <a href="<%= request.getContextPath()%>">
                    <i class="fas fa-cog"></i>
                    <span>Settings</span>
                </a>
            </li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Header -->
        <header>
            <div class="header-title">
                <h1>Event Management Dashboard</h1>
                <p class="subtitle">STATISTICAL OVERVIEW</p>
            </div>
            <div class="header-right">
                <div class="notification-icon">
                    <i class="far fa-bell"></i>
                    <span class="notification-count">2</span>
                </div>
                <div class="user-profile">
                    <img src="<%= request.getContextPath()%>/assets/images/user.jpg" alt="User">
                    <div class="user-info">
                        <span class="user-name">Samman Khanal</span>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                </div>
            </div>
        </header>

        <!-- Dashboard Cards -->
        <div class="card-container">
            <div class="card">
                <div class="card-info">
                    <span class="card-label">Total Events</span>
                    <h2 class="card-value">24</h2>
                </div>
                <div class="card-icon blue">
                    <i class="fas fa-calendar-check"></i>
                </div>
            </div>
            <div class="card">
                <div class="card-info">
                    <span class="card-label">Active Users</span>
                    <h2 class="card-value">1,234</h2>
                </div>
                <div class="card-icon green">
                    <i class="fas fa-users"></i>
                </div>
            </div>
            <div class="card">
                <div class="card-info">
                    <span class="card-label">Pending Approvals</span>
                    <h2 class="card-value">18</h2>
                </div>
                <div class="card-icon orange">
                    <i class="fas fa-hourglass-half"></i>
                </div>
            </div>
            <div class="card">
                <div class="card-info">
                    <span class="card-label">Total Registrations</span>
                    <h2 class="card-value">2,456</h2>
                </div>
                <div class="card-icon purple">
                    <i class="fas fa-clipboard-list"></i>
                </div>
            </div>
        </div>

        <!-- Events Management Section -->
        <div class="section">
            <div class="section-header">
                <h2>Events Management</h2>
                <button class="add-btn">
                    <i class="fas fa-plus"></i> Add New Event
                </button>
            </div>
            <div class="table-container">
                <table class="data-table">
                    <thead>
                    <tr>
                        <th>Event Name</th>
                        <th>Date</th>
                        <th>Venue</th>
                        <th>Participants</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>IIC Spring Carnival</td>
                        <td>Apr 15, 2025</td>
                        <td>Main Auditorium</td>
                        <td>245/300</td>
                        <td><span class="status-badge active">Active</span></td>
                        <td class="actions">
                            <a href="<%= request.getContextPath()%>" class="action-btn edit"><i class="fas fa-edit"></i></a>
                            <a href="<%= request.getContextPath()%>" class="action-btn delete"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Pending Registrations Section -->
        <div class="section">
            <div class="section-header">
                <h2>IIC Spring Carnival</h2>
            </div>
            <div class="pending-items">
                <div class="pending-item">
                    <div class="user-info-block">
                        <img src="<%= request.getContextPath()%>/assets/images/user.jpg" alt="User" class="user-avatar">
                        <div class="user-details">
                            <h3>Rabin Basnet</h3>
                            <p>Annual Tech Symposium</p>
                        </div>
                    </div>
                    <div class="action-buttons">
                        <button class="btn approve">Approve</button>
                        <button class="btn reject">Reject</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- User Management Section -->
        <div class="section">
            <div class="section-header">
                <h2>User Management</h2>
            </div>
            <div class="table-container">
                <table class="data-table">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="user-cell">
                            <img src="<%= request.getContextPath()%>/assets/images/user.jpg" alt="User" class="user-avatar-small">
                            <span>Sandhya Majhi</span>
                        </td>
                        <td>majhi.sandhya@gmail.com</td>
                        <td>Student</td>
                        <td><span class="status-indicator active"></span> Active</td>
                        <td class="actions">
                            <a href="<%= request.getContextPath()%>" class="action-btn view"><i class="fas fa-eye"></i></a>
                            <a href="<%= request.getContextPath()%>" class="action-btn edit"><i class="fas fa-edit"></i></a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
