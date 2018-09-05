<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <titl>Welcome to My Page</titl>
</head>
<body>
<form:form modelAttribute="student" action="formSubmit">
    <br/>
    <form:input path="firstName"/>
    <form:input path="lastName"/>
    <br/>
    <form:select path="country">
        <form:option value="india" label="india"/>
        <form:option value="srilanka" label="srilanka"/>
    </form:select>
    <br/>
    <h1>Select options using Spring MVC LinkedHashMap</h1>
    <form:select path="country2">
        <form:options items="${student.countryOptions}"/>
    </form:select>
    <br/>
    Java<form:radiobutton path="favouriteLanguage" value="Java"/>
    C#<form:radiobutton path="favouriteLanguage" value="C#"/>

    <br/>
    Sports<form:checkbox path="hobbies" value="sports"/>
    Music<form:checkbox path="hobbies" value="music"/>
    <input type="submit" value="submit the form"/>
</form:form>
</body>
</html>