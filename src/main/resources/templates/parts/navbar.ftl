<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/">IMDB</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/films">Films <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/message">Comments</a>
            </li>
            <#if isAdmin>
                <li class="nav-item active">
                    <a class="nav-link" href="/user">User Edit</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="/filmsEdit">Film edit</a>
                </li>
            </#if>
        </ul>
        <form class="form-inline my-2 my-lg-0" action="/findFilms" method="post">
            <input class="form-control mr-sm-2" type="text" name="name" placeholder="search..." aria-label="Search">
            <button class="btn btn-light mr-5 my-2 my-sm-0" type="submit">Search</button>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
        <form class="form-inline my-2 my-lg-0" action="/logout" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <input class="btn btn-light btn-sm my-2 my-sm-0" type="submit" value="Sign Out"/>
        </form>
    </div>
</nav>