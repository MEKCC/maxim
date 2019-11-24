<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>

    <@l.login "/registration" "confirm" true/>

    <br>
    <#if message??>
        <div class="alert alert-danger" role="alert">
            <p class="text-center"><strong>${message}</strong></p>
        </div>
    </#if>
</@c.page>