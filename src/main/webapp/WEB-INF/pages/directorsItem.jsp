<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Cinema [Java Mastery]</title>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
            <span class="navbar-toggler-icon"></span>
        </button>

        <span class="badge badge-warning"><h2>"Cinema"</h2></span>

        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav mr-auto">
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
                <li class="nav-item px-md-3">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"><h3>Nothing</h3></a>
                </li>
            </ul>

            <form class="form-inline my-2 my-lg-0" action="#">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"
                       name="search-str">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>





<div class="container" style = "color:darkred">
    <legend align="center"><h1>Information about Director ${director.first_name}:</h1></legend>
</div>

<div class="container">
    <table class="table">
        <thead>
        <tr>
            <th scope="col"><h3>No.</h3></th>
            <th scope="col"><h3>First name</h3></th>
            <th scope="col"><h3>Last name</h3></th>
            <th scope="col"><h3>Birth date</h3></th>
        </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row"><h3>${director.id}</h3></th>
                <td><a><h3>${director.first_name}</h3></a></td>
                <td><a><h3>${director.last_name}</h3></a></td>
                <td><a><h3>${director.birth_date}</h3></a></td>
            </tr>
        </tbody>
    </table>
    <table class="table">
        <thead>
        <tr>
            <th scope="col"><h3>Films: </h3></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><a><h3>${director.films}</h3></a></td>
        </tr>
        </tbody>
    </table>
    <a class="btn btn-success btn-lg btn-block" href="${pageContext.request.contextPath}/directors" role="button">Return to Directors</a>
</div>







<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>