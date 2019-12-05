<#import "parts/common.ftl" as c>
<@c.page>


    <h1 class="text-center">Edit film</h1>
    <br>
    <a class="btn btn-success" href="/filmsEdit/addFilm">Create Film</a>
    <br>
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Year</th>
                <th>Delete</th>
                <th>Update</th>
            </tr>
            </thead>
            <tbody>
            <#list films as film>
                <tr>
                    <td>${film.id}.</td>
                    <td>${film.name}</td>
                    <td>${film.year}</td>
                    <td><a href="/filmsEdit/delete/${film.id}">Delete</a></td>
                    <td><a href="/filmsEdit/update/${film.id}">Update</a></td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>

</@c.page>