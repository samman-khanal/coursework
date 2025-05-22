<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact Us</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/contact.css">
</head>
<body>
<jsp:include page="../common/header.jsp" />

<div class="doom-container">
    <div class="contact-form-container">
        <h1>Contact Us</h1>
        <p>We'd love to hear from you. Please fill out the form below.</p>

        <form action="" method="post">
            <div class="form-group">
                <label for="firstName">First Name</label>
                <input type="text" id="firstName" name="firstName" placeholder="Enter your first name" required>
            </div>

            <div class="form-group">
                <label for="lastName">Last Name</label>
                <input type="text" id="lastName" name="lastName" placeholder="Enter your last name" required>
            </div>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" placeholder="example@domain.com" required>
            </div>

            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="tel" id="phone" name="phone" placeholder="+977 987-654-3210    ">
            </div>

            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" id="address" name="address" placeholder="Street, City, State, ZIP">
            </div>

            <div class="form-group">
                <label for="message">Message</label>
                <textarea id="message" name="message" placeholder="Write your message here..." required></textarea>
            </div>

            <button type="submit">
                Send Message
            </button>
        </form>
    </div>
</div>

<jsp:include page="../common/footer.jsp" />
</body>
</html>
