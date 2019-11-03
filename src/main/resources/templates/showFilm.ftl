<#import "parts/common.ftl" as c>
<@c.page>
    <h1>Film info</h1>
    <table border="1">
        <tr>
            <td>Id</td>
            <td>${film.id}</td>
        </tr>
        <tr>
            <td>Name</td>
            <td>${film.name}</td>
        </tr>
        <tr>
            <td>Year</td>
            <td>${film.year}</td>
        </tr>
    </table>
    <br>
    <a href="/films/">Back</a>
</@c.page>