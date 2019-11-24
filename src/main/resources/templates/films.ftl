<#import "parts/common.ftl" as c>
<@c.page>

    <h1 class="text-center">Film list</h1>
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
            <#list films as film>
                <tr>
                    <td>${film.id}.</td>
                    <td><a href="/films/${film.id}">${film.name}</a></td>
                    <td>${film.year}</td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
</@c.page>