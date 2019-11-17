<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
    Login page
    <@l.login "/login" />
    <#if message??>
        <p>${message}</p>
    </#if>
    <a href="/registration">Add new User</a>
</@c.page>