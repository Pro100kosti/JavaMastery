<html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../../resources/style/main.css">
    <title>Cinema [Java Mastery]</title>
</head>
<body class="intro">
<nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
            <span class="navbar-toggler-icon"></span>
        </button>

        <span class="badge badge-warning"><h2>"Project Cinema"</h2></span>

        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav mr-auto ">
                <li class="nav-item active px-md-3">
                    <a class="font-weight-bold nav-link active" href="${pageContext.request.contextPath}/"><h3>Home</h3></a>
                </li>
                <li class="nav-item px-md-3">
                    <a class="nav-link" href="${pageContext.request.contextPath}/directors"><h3>Directors</h3></a>
                </li>
                <li class="nav-item px-md-3">
                    <a class="nav-link" href="${pageContext.request.contextPath}/films"><h3>Films</h3>
                    </a>
                </li>
                <li class="nav-item px-md-3">
                    <a class="nav-link" href="${pageContext.request.contextPath}/save-director"><h3>Create Director</h3></a>
                </li>
                <li class="nav-item px-md-3">
                    <a class="nav-link" href="${pageContext.request.contextPath}/save-film"><h3>Create Film</h3>
                    </a>
                </li>
            </ul>

            <form class="form-inline my-2 my-lg-0" action="${pageContext.request.contextPath}/search">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"
                       name="search-id">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>