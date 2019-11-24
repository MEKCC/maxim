<#import "parts/common.ftl" as c>
<@c.page>
    <h1>Film info</h1>
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Year</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${film.id}.</td>
                <td>${film.name}</td>
                <td>${film.year}</td>
            </tr>
            </tbody>
        </table>
    </div>
    <a href="/films/">Back</a>
</@c.page>