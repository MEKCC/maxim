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
                <td>${film.id}</td>
                <td>${film.name}</td>
                <td>${film.year}</td>
            </tr>
        </#list>
    </table>
    <br>
    <a href="/films/">Back</a>
</@c.page>