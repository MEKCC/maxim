<#import "parts/common.ftl" as c>
<@c.page>
    <form name="film" action="/filmsEdit/updateFilm" method="post">
        <input title="Id" type="hidden" name="id" value="${film.id}">
        <p>Name</p>
        <input title="Name" type="text" name="name" value="${film.name}">
        <p>Year</p>
        <input title="Year" type="text" name="year" value="${film.year}">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="OK">
    </form>
</@c.page>