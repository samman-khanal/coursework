
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <title>Title</title>
    <style>
        :root {
            --primary-color: #3a36db;
            --primary-light: #f0f0ff;
            --secondary-color: #6c757d;
            --dark-bg: #1e1e2d;
            --sidebar-width: 240px;
            --light-gray: #f8f9fa;
            --border-color: #e9ecef;
            --text-color: #212529;
            --success-color: #28a745;
            --danger-color: #dc3545;
            --warning-color: #ffc107;
            --info-color: #17a2b8;

            /* Card Colors */
            --blue-bg: #e7f1ff;
            --blue-icon: #0d6efd;
            --green-bg: #e7fff1;
            --green-icon: #00b57d;
            --orange-bg: #fff7e7;
            --orange-icon: #ff9800;
            --purple-bg: #f7e7ff;
            --purple-icon: #6f42c1;
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: #f5f7fb;
            color: var(--text-color);
            line-height: 1.6;
        }

        .container {
            display: flex;
            min-height: 100vh;
        }

        /* Sidebar Styles */
        .sidebar {
            width: var(--sidebar-width);
            background-color: var(--dark-bg);
            color: white;
            position: fixed;
            height: 100%;
            overflow-y: auto;
            transition: all 0.3s ease;
            z-index: 10;
        }

        .logo {
            display: flex;
            align-items: center;
            padding: 20px;
            height: 70px;
            background-color: rgba(0, 0, 0, 0.1);
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }

        .logo i {
            font-size: 20px;
            margin-right: 10px;
        }

        .logo span {
            font-size: 16px;
            font-weight: 600;
        }

        .nav-links {
            list-style: none;
            padding: 10px 0;
        }

        .nav-links li {
            margin-bottom: 5px;
        }

        .nav-links li a {
            display: flex;
            align-items: center;
            padding: 12px 20px;
            color: rgba(255, 255, 255, 0.7);
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .nav-links li a:hover,
        .nav-links li.active a {
            color: white;
            background-color: rgba(255, 255, 255, 0.1);
        }

        .nav-links li a i {
            font-size: 16px;
            margin-right: 10px;
            width: 20px;
            text-align: center;
        }

    /*    new*/
        .main-content {
            flex: 1;
            overflow-y: auto;
        }

        .header {
            padding: 1.5rem;
            border-bottom: 1px solid var(--border-color);
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: white;
        }

        .header h1 {
            font-size: 1.25rem;
            font-weight: 500;
        }

        .user-menu {
            display: flex;
            gap: 1rem;
        }

        .notification-icon, .user-avatar {
            width: 32px;
            height: 32px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }

        .notification-icon {
            background-color: #f1f3f4;
            position: relative;
        }

        .notification-badge {
            position: absolute;
            top: -3px;
            right: -3px;
            width: 18px;
            height: 18px;
            background-color: #ea4335;
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 0.7rem;
            font-weight: bold;
        }

        .user-avatar img {
            width: 100%;
            height: 100%;
            border-radius: 50%;
            object-fit: cover;
        }

        .filters {
            padding: 1rem 1.5rem;
            display: flex;
            align-items: center;
            gap: 1rem;
            background-color: white;
            border-bottom: 1px solid var(--border-color);
        }

        .search-bar {
            flex: 1;
            position: relative;
            max-width: 350px;
        }

        .search-bar input {
            width: 100%;
            padding: 0.6rem 1rem 0.6rem 2.25rem;
            border: 1px solid var(--border-color);
            border-radius: 4px;
            font-size: 0.875rem;
        }

        .search-bar i {
            position: absolute;
            left: 0.75rem;
            top: 50%;
            transform: translateY(-50%);
            color: #5f6368;
        }

        .filter-dropdown, .date-picker {
            padding: 0.6rem 1rem;
            border: 1px solid var(--border-color);
            border-radius: 4px;
            background-color: white;
            font-size: 0.875rem;
            cursor: pointer;
        }

        .filter-dropdown {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            min-width: 120px;
        }

        .calendar-button {
            background: none;
            border: none;
            cursor: pointer;
        }

        .add-event-btn {
            background-color: var(--primary-color);
            color: white;
            border: none;
            border-radius: 4px;
            padding: 0.6rem 1rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            cursor: pointer;
            font-weight: 500;
            margin-left: auto;
        }

        .event-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1px;
        }

        .event-table th {
            text-align: left;
            padding: 1rem 1.5rem;
            font-weight: 500;
            background-color: white;
            border-bottom: 1px solid var(--border-color);
        }

        .event-row {
            background-color: white;
            border-bottom: 1px solid var(--border-color);
        }

        .event-row td {
            padding: 1rem 1.5rem;
        }

        .event-icon {
            width: 40px;
            height: 40px;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 1rem;
        }

        .music-icon {
            background-color: #e8f0fe;
            color: #4285f4;
        }

        .tech-icon {
            background-color: #e6e6ff;
            color: #673ab7;
        }

        .food-icon {
            background-color: #fff0e0;
            color: #ff9800;
        }

        .event-details {
            display: flex;
            align-items: center;
        }

        .event-info h3 {
            font-weight: 500;
            margin-bottom: 0.25rem;
        }

        .event-info p {
            font-size: 0.875rem;
            color: #5f6368;
        }

        .status-badge {
            display: inline-block;
            padding: 0.25rem 0.75rem;
            border-radius: 16px;
            font-size: 0.75rem;
            font-weight: 500;
        }

        .status-upcoming {
            background-color: var(--upcoming-badge-bg);
            color: var(--upcoming-badge-text);
        }

        .status-past {
            background-color: var(--past-badge-bg);
            color: var(--past-badge-text);
        }

        .action-buttons {
            display: flex;
            gap: 1rem;
        }

        .action-btn {
            background: none;
            border: none;
            cursor: pointer;
            color: #5f6368;
        }

        .pagination {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 1.5rem;
            background-color: white;
            border-top: 1px solid var(--border-color);
        }

        .page-info {
            font-size: 0.875rem;
            color: #5f6368;
        }

        .page-controls {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .page-btn {
            width: 32px;
            height: 32px;
            border-radius: 4px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            border: none;
            background: none;
        }

        .page-btn.active {
            background-color: var(--primary-color);
            color: white;
        }

        .page-btn:hover:not(.active) {
            background-color: #f1f3f4;
        }
    </style>
</head>
<body>
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

<%--main--%>

<div class="main-content">
    <div class="header">
        <h1>Manage Events</h1>
        <div class="user-menu">
            <div class="notification-icon">
                <i class="fa-solid fa-bell"></i>
                <div class="notification-badge">1</div>
            </div>
            <div class="user-avatar">
                <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="User Avatar">
            </div>
        </div>
    </div>

    <div class="filters">
        <div class="search-bar">
            <i class="fa-solid fa-search"></i>
            <input type="text" placeholder="Search events...">
        </div>
        <div class="filter-dropdown">
            <span>All Status</span>
            <i class="fa-solid fa-chevron-down"></i>
        </div>
        <input type="text" class="date-picker" placeholder="mm/dd/yyyy">
        <button class="calendar-button">
            <i class="fa-regular fa-calendar"></i>
        </button>
        <button class="add-event-btn">
            <i class="fa-solid fa-plus"></i>
            <span>Add Event</span>
        </button>
    </div>

    <table class="event-table">
        <thead>
        <tr>
            <th>Event Title</th>
            <th>Date</th>
            <th>Location</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="event" items="${eventsList}" varStatus="status">
            <tr class="event-row">
                <td>
                    <div class="event-details">
                        <div class="event-icon music-icon">
                            <i class="fa-solid fa-music"></i>
                        </div>
                        <div class="event-info">
                            <h3>Summer Music Festival</h3>
                            <p>3-day event</p>
                        </div>
                    </div>
                </td>
                <td>May 15, 2025</td>
                <td>Central Park, NY</td>
                <td>
                    <span class="status-badge status-upcoming">Upcoming</span>
                </td>
                <td>
                    <div class="action-buttons">
                        <button class="action-btn">
                            <i class="fa-solid fa-pencil"></i>
                        </button>
                        <button class="action-btn">
                            <i class="fa-solid fa-trash"></i>
                        </button>
                    </div>
                </td>
            </tr>
            <tr class="event-row">
                <td>
                    <div class="event-details">
                        <div class="event-icon tech-icon">
                            <i class="fa-solid fa-graduation-cap"></i>
                        </div>
                        <div class="event-info">
                            <h3>Tech Conference 2025</h3>
                            <p>Technology</p>
                        </div>
                    </div>
                </td>
                <td>June 20, 2025</td>
                <td>Convention Center</td>
                <td>
                    <span class="status-badge status-upcoming">Upcoming</span>
                </td>
                <td>
                    <div class="action-buttons">
                        <button class="action-btn">
                            <i class="fa-solid fa-pencil"></i>
                        </button>
                        <button class="action-btn">
                            <i class="fa-solid fa-trash"></i>
                        </button>
                    </div>
                </td>
            </tr>
            <tr class="event-row">
                <td>
                    <div class="event-details">
                        <div class="event-icon food-icon">
                            <i class="fa-solid fa-utensils"></i>
                        </div>
                        <div class="event-info">
                            <h3>Food & Wine Festival</h3>
                            <p>Culinary</p>
                        </div>
                    </div>
                </td>
                <td>April 10, 2025</td>
                <td>Riverside Plaza</td>
                <td>
                    <span class="status-badge status-past">Past</span>
                </td>
                <td>
                    <div class="action-buttons">
                        <button class="action-btn">
                            <i class="fa-solid fa-pencil"></i>
                        </button>
                        <button class="action-btn">
                            <i class="fa-solid fa-trash"></i>
                        </button>
                    </div>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div class="pagination">
        <div class="page-info">
            Showing 1-3 of 12 events
        </div>
        <div class="page-controls">
            <button class="page-btn prev-btn">
                <i class="fa-solid fa-chevron-left"></i>
            </button>
            <button class="page-btn active">1</button>
            <button class="page-btn">2</button>
            <button class="page-btn">3</button>
            <button class="page-btn next-btn">
                <i class="fa-solid fa-chevron-right"></i>
            </button>
        </div>
    </div>
</div>

</body>
</html>
