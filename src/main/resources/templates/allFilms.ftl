<#import "parts/common.ftl" as c>
<@c.page>

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
                <td><a href="/filmsEdit/delete/${film.id}">Delete</a></td>
                <td><a href="/filmsEdit/update/${film.id}">Update</a></td>
            </tr>
        </#list>
    </table>

    <br>
    <a href="/filmsEdit/addFilm"><h3>Add new film</h3></a>
</@c.page>