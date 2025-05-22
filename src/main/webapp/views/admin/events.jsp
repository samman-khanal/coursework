<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>EventHub - Manage Events</title>
  <style>
    :root {
      --primary-color: #1a73e8;
      --sidebar-bg: #0f172a;
      --sidebar-text: #ffffff;
      --border-color: #e0e0e0;
      --past-badge-bg: #e0e0e0;
      --past-badge-text: #505050;
      --upcoming-badge-bg: #e2f6e9;
      --upcoming-badge-text: #34a853;
    }

    /** {*/
    /*  margin: 0;*/
    /*  padding: 0;*/
    /*  box-sizing: border-box;*/
    /*  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Arial, sans-serif;*/
    /*}*/

    body {
      font-family: 'Inter', sans-serif;
      display: flex;
      height: 100vh;
      background-color: #f8f9fa;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }

    /*body {*/
    /*  font-family: 'Inter', sans-serif;*/
    /*  background-color: #f5f7fb;*/
    /*  color: var(--text-color);*/
    /*  line-height: 1.6;*/
    /*}*/

    .sidebar {
      width: 230px;
      background-color: var(--sidebar-bg);
      color: var(--sidebar-text);
      padding: 1rem 0;
      flex-shrink: 0;
    }

    .logo {
      display: flex;
      align-items: center;
      padding: 0 1.5rem;
      margin-bottom: 2rem;
      font-size: 1.25rem;
      font-weight: bold;
    }

    .nav-item {
      display: flex;
      align-items: center;
      padding: 0.875rem 1.5rem;
      cursor: pointer;
      transition: background-color 0.2s;
    }

    .nav-item:hover {
      background-color: rgba(255, 255, 255, 0.1);
    }

    .nav-item.active {
      background-color: rgba(26, 115, 232, 0.2);
      border-left: 4px solid var(--primary-color);
    }

    .nav-item i {
      margin-right: 0.75rem;
      width: 20px;
      text-align: center;
    }

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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
<div class="sidebar">
  <div class="logo">
    <i class="fa-solid fa-calendar-check"></i>
    <span style="margin-left: 0.75rem;">EventHub</span>
  </div>
  <div class="nav-item">
    <i class="fa-solid fa-gauge-high"></i>
    <span>Dashboard</span>
  </div>
  <div class="nav-item">
    <i class="fa-solid fa-user-group"></i>
    <span>Students</span>
  </div>
  <div class="nav-item active">
    <i class="fa-solid fa-calendar-days"></i>
    <span>Events</span>
  </div>
  <div class="nav-item">
    <i class="fa-solid fa-chart-line"></i>
    <span>Reports</span>
  </div>
  <div class="nav-item">
    <i class="fa-solid fa-user"></i>
    <span>Profile</span>
  </div>
  <div class="nav-item">
    <i class="fa-solid fa-right-from-bracket"></i>
    <span>Logout</span>
  </div>
</div>

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

<script>
  // If the eventsList is not provided, we can use this sample data for demonstration
  <% if (request.getAttribute("eventsList") == null) { %>
  // This would normally be populated from the server
  const eventsList = [
    {
      title: "Summer Music Festival",
      category: "3-day event",
      date: "May 15, 2025",
      location: "Central Park, NY",
      status: "upcoming",
      iconType: "music"
    },
    {
      title: "Tech Conference 2025",
      category: "Technology",
      date: "June 20, 2025",
      location: "Convention Center",
      status: "upcoming",
      iconType: "tech"
    },
    {
      title: "Food & Wine Festival",
      category: "Culinary",
      date: "April 10, 2025",
      location: "Riverside Plaza",
      status: "past",
      iconType: "food"
    }
  ];

  // JavaScript to handle pagination and filtering would go here
  <% } %>

  // Event listeners for buttons and interactive elements
  document.querySelectorAll('.nav-item').forEach(item => {
    item.addEventListener('click', function() {
      // Remove active class from all nav items
      document.querySelectorAll('.nav-item').forEach(navItem => {
        navItem.classList.remove('active');
      });
      // Add active class to clicked item
      this.classList.add('active');
    });
  });

  // Filter dropdown functionality
  const filterDropdown = document.querySelector('.filter-dropdown');
  filterDropdown.addEventListener('click', function() {
    // This would normally show a dropdown menu
    console.log('Filter dropdown clicked');
  });

  // Add event button functionality
  const addEventBtn = document.querySelector('.add-event-btn');
  addEventBtn.addEventListener('click', function() {
    // This would normally open a modal or redirect to an "Add Event" page
    alert('Add Event button clicked');
  });

  // Pagination functionality
  document.querySelectorAll('.page-btn').forEach(btn => {
    if (!btn.classList.contains('prev-btn') && !btn.classList.contains('next-btn')) {
      btn.addEventListener('click', function() {
        document.querySelectorAll('.page-btn').forEach(pageBtn => {
          pageBtn.classList.remove('active');
        });
        this.classList.add('active');
      });
    }
  });

  // Previous and Next pagination buttons
  const prevBtn = document.querySelector('.prev-btn');
  const nextBtn = document.querySelector('.next-btn');

  prevBtn.addEventListener('click', function() {
    // Handle previous page navigation
    console.log('Previous page');
  });

  nextBtn.addEventListener('click', function() {
    // Handle next page navigation
    console.log('Next page');
  });

  // Action buttons functionality
  document.querySelectorAll('.action-btn').forEach(btn => {
    btn.addEventListener('click', function(e) {
      const isEdit = this.querySelector('i').classList.contains('fa-pencil');
      const isDelete = this.querySelector('i').classList.contains('fa-trash');

      if (isEdit) {
        // This would normally open an edit modal or redirect to an edit page
        alert('Edit button clicked');
      } else if (isDelete) {
        // This would normally show a confirmation dialog
        alert('Delete button clicked');
      }

      // Prevent event bubbling
      e.stopPropagation();
    });
  });
</script>
</body>
</html>