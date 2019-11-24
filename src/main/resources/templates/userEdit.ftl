<#import "parts/common.ftl" as c>
<@c.page>
    User editor

    <form action="/user" method="post">
        <input type="text" name="username" value="${user.username}">
        <#list roles as role>
            <div class="form-check">
                <label class="form-check-label"><input class="form-check-input" type="checkbox"
                                                       name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}
                </label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button class="btn btn-success" type="submit">Save</button>
    </form>

</@c.page>