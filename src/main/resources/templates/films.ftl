<#import "parts/common.ftl" as c>
<@c.page>
    <div>
        <form action="/logout" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <input type="submit" value="Sign Out"/>
        </form>
    </div>
    <br>
    <a href="/user">Users list</a>
    <br>
    <a href="/filmsEdit">Films list</a>

    <h1>Hello from films</h1>

    <div>
        <form action="/findFilms" method="post">
            <input type="text" name="name" placeholder="Enter name">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
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
            </tr>
        </#list>
    </table>
</@c.page>