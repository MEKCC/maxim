<#import "parts/common.ftl" as c>

<@c.page>

    <div class="text-center"><strong>Messages list</strong></div>
    <div>
        <form method="post">
            <textarea class="form-control-md" rows="3" name="text" placeholder="comment..." required></textarea>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <br>
            <input type="submit" value="OK">
        </form>
    </div>

    <#list messages as message>
        <div class="card my-3" style="width: 28rem;">
            <div class="m-2">
                <span>${message.text}</span>
            </div>
            <div class="card-footer text-muted">
                <strong>${message.author.getUsername()}</strong>
            </div>
        </div>
    </#list>

</@c.page>