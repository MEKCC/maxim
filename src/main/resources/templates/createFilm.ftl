<#import "parts/common.ftl" as c>
<@c.page>
    <form name="film" action="/addFilm" method="post">
        <p>Name</p>
        <input title="Name" type="text" name="name">
        <p>Year</p>
        <input title="Year" type="text" name="year">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="OK">
    </form>
</@c.page>