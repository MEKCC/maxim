<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>Hello from films</h1>

<div>
    <form method="post">
        <input type="text" name="name" placeholder="Enter name">
        <input type="text" name="year" placeholder="Enter year">
        <input type="submit" value="OK">
    </form>
</div>

<h1 align="center"> Films list </h1>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Year</th>
    </tr>
    <#list films as film>
        <tr>
            <td><a href="/films/${film.id}">${film.id}</a></td>
            <td>${film.name}</td>
            <td>${film.year}</td>
            <td><a href="/delete/${film.id}">Delete</a> </td>
            <td><a href="/update/${film.id}">Update</a> </td>
        </tr>
    </#list>
</table>
<br>
<a href="/addFilm"><h3>Add new film</h3></a>
</body>
</html>