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






<div class="container" style = "color:darkgreen">
    <legend align="center"><h1>Please enter Movie information:</h1></legend>
</div>

<div class="container">

<form method="POST" action="${pageContext.request.contextPath}/save-film" enctype="multipart/form-data">
    <div class="form-group">
        <label for="exampleInputEmail1">Movie title</label>
        <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Movie title">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Movie year</label>
        <input type="text" name="release_date" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" placeholder="Enter Movie year">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Movie genre</label>
        <input type="text" name="genre" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp" placeholder="Enter the movie genre">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Id of the movie director</label>
        <input type="number" name="director_id" class="form-control" id="exampleInputEmail4" aria-describedby="emailHelp" placeholder="Enter the id of the movie director">
    </div>
    <button type="submit" class="btn btn-primary"><h3>Submit</h3></button>
</form>
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