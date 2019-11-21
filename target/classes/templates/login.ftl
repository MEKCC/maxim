<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>

    <@l.login "/login" "sign in" />

    <br>
    <#if message??>
        <div class="alert alert-danger" role="alert">
            <p class="text-center"><strong>${message}</strong></p>
        </div>
    </#if>
</@c.page>