<#macro login path>
    <form action="${path}" method="post">
        <div><label> User Name : <input type="text" name="username" required/>
        </label></div>
        <div><label> Password: <input type="password" name="password" required/> </label></div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div><input type="submit" value="Sign In"/></div>
    </form>
</#macro>