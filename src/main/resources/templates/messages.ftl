<#import "parts/common.ftl" as c>

<@c.page>

    <h1 class="text-center">Messages</h1>
    <div class="form-group">
        <form method="post">
            <textarea class="form-control" rows="3" name="text" placeholder="left feedback..." required></textarea>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button type="button" class="btn btn-secondary">OK</button>
        </form>
    </div>

    <#list messages as message>
        <div class="card my-3">
            <div class="card-footer text-muted">
                <strong>${message.author.getUsername()}</strong>
            </div>
            <div class="m-2">
                <span>${message.text}</span>
            </div>
        </div>
    </#list>

</@c.page>