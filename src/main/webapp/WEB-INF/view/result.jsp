<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Note
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
It will still give syntax error but you can fix that by adding "javax.servlet:jstl:1.2" (without quotes) as a module dependency. To do that, follow these steps:

Click your project name and press "F4" to bring up the module settings dialog.
Then go to the "dependencies" tab in the "modules" section.
Click the green "+" icon --> library --> From Maven.
Search for javax.servlet:jstl:1.2 in the search bar and press OK and it will download and add the above mentioned library as a module.
Now you should not have any kind of syntax error.

Also add dependency
<dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>jstl</artifactId>
            <version>1.2</version>
        </dependency>
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>${student.firstName}</title>
</head>
<body>
${student.firstName} is the Name

${student.country}is the country

${student.country2} is the output of country2

${student.favouriteLanguage} is the favourite Languages

<c:forEach var="item" items="${student.hobbies}">
    ${item}
</c:forEach>


</body>
</html>
