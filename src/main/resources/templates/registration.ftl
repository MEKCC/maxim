<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
    Add new User
    <@l.login "/registration" />
    <#if message??>
        <p>${message}</p>
    </#if>
</@c.page>