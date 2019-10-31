<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Film</title>
</head>
<body>

<form name="film" action="/updateFilm" method="post">
    <p>Id</p>
    <input title="Id" type="text" name="id" value="${film.id}">
    <p>Name</p>
    <input title="Name" type="text" name="name" value="${film.name}">
    <p>Year</p>
    <input title="Year" type="text" name="year" value="${film.year}">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="submit" value="OK">
</form>

</body>
</html>