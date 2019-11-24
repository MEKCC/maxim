<#macro login path button isRegisterForm>

    <section id="cover">
        <div id="cover-caption">
            <div id="container" class="container">
                <div class="row">
                    <div class="col-sm-10 offset-sm-1 text-center">
                        <h1 class="display-3">Login or register please</h1>
                        <div class="info-form">
                            <form action="${path}" class="form-inline justify-content-center" method="post">
                                <div class="form-group">
                                    <label class="sr-only">Name</label>
                                    <input type="text" class="form-control" name="username" placeholder="login"
                                           required>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only">Password</label>
                                    <input type="password" class="form-control" name="password" placeholder="password"
                                           required>
                                </div>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                <button type="submit" class="btn btn-warning">${button}</button>
                            </form>
                        </div>
                        <br>
                        <#if !isRegisterForm> <a class="btn btn-success" href="/registration">registration</a> </#if>
                    </div>
                </div>
            </div>
        </div>
    </section>
</#macro>