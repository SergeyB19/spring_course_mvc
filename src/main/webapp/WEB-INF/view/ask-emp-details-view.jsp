<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    <title>Title</title>--%>
</head>
<body>

<h2>Dear Employee, Please enter your details</h2>

<br><%--это пробел--%>
<br><%--это тоже пробел--%>

<form:form action="showDetails" modelAttribute="employee">

    Name<form:input path="name"/>
    <br>
    <br>
    Surname<form:input path="surname"/>
    <br>
    <br>
    Salary<form:input path="salary"/>
    <br>
    <br>
    Department<form:select path="department">
    <form:options items="${employee.departments}"/> <%--добавление через Map--%>


    <%--#################################--%>
    <%-- private Map<String, String> departments; из класса Employee добавление через Map
    public Employee() {
        departments = new HashMap<>();
        departments.put("IT", "Information Tehnology");
        departments.put("HR", "Human Resourses");
        departments.put("Sales", "Sales");
    }--%>
   <%-- <form:option value="Information Tehnology" label="IT"/>
    <form:option value="Human Resourses" label="HR"/>
    <form:option value="Sales" label="Sales"/>--%>
    <%--#################################--%>

</form:select>
    <br>
    <br>
    Which car do you want?
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/> <%-- через carBrands = new HashMap<>();--%>


<%--    hardcoded variant--%>
<%--    BMW <form:radiobutton path="carBrand" value="BMW"/>
    Audi <form:radiobutton path="carBrand" value="Audi"/>
    MB <form:radiobutton path="carBrand" value="Mercedes-Benz"/>--%>
    <br>
    <br>
    <input type="submit" value="OK">


</form:form>

<%--<form action="showDetails" method="get">
    <input type="text" name="employeeName"
           placeholder="Write your name">

    <input type="submit"/> &lt;%&ndash;отображает кнопку submit&ndash;%&gt;

</form>--%>

</body>
</html>
