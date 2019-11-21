<#import "parts/common.ftl" as c>
<@c.page>
    <form name="film" action="/filmsEdit/addFilm" method="post">
        <input title="Name" type="text" name="name" placeholder="film name">
        <input title="Year" type="text" name="year" placeholder="year">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input  type="submit" value="OK">
    </form>
</@c.page>