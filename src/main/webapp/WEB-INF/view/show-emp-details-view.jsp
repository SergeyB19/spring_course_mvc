<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    <title>Title</title>--%>
</head>
<body>
<h2>Dear Employee, you are WELCOME!!!</h2>

<br>
<br>
<br>

<%--Your name: ${param.employeeName}--%>
<%--Your name: ${nameAttribute}--%>
Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}
<%--${description} &lt;%&ndash;  model.addAttribute("nameAttribute", empName);&ndash;%&gt;--%>
</body>
</html>
