<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Spring Security Example </title>
</head>
<body>
Add new User

<form action="/registration" method="post">
    <div><label> User Name : <input type="text" name="username" required pattern="[a-zA-Z][a-zA-Z0-9\s]*"/> </label></div>
    <div><label> Password: <input type="password" name="password" required pattern="[a-zA-Z][a-zA-Z0-9\s]*"/> </label></div>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <div><input type="submit" value="Sign In"/></div>
</form>
</body>
</html>