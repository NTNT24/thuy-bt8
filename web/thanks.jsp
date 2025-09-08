<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    <h1>Thanks for joining our email list</h1>
    <p>Here is the information that you entered:</p>

    <div class="info-box">
        <table class="info-table">
            <tr>
                <th>Email:</th>
                <td>${sessionScope.user.email}</td>
            </tr>
            <tr>
                <th>First Name:</th>
                <td>${sessionScope.user.firstName}</td>
            </tr>
            <tr>
                <th>Last Name:</th>
                <td>${sessionScope.user.lastName}</td>
            </tr>
            <tr>
                <th>Current date:</th>
                <td>${requestScope.currentDate}</td>
            </tr>
        </table>

        <h2>First two users in the list</h2>
        <table class="info-table">
            <tr>
                <th>1)</th>
                <td>${sessionScope.users[0].firstName} ${sessionScope.users[0].lastName}, ${sessionScope.users[0].email}</td>
            </tr>
            <tr>
                <th>2)</th>
                <td>${sessionScope.users[1].firstName} ${sessionScope.users[1].lastName}, ${sessionScope.users[1].email}</td>
            </tr>
        </table>

        <p>
            If you have questions, contact our customer service at:
            <a href="mailto:${initParam.custServEmail}">${initParam.custServEmail}</a>
        </p>
    </div>

    <form action="index.jsp" method="get">
        <input type="submit" value="Return">
    </form>
</body>

</html>
