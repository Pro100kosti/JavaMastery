<jsp:include page="header.jsp"/>



<div class="container">
    <hr>
    <legend align="center" style = "color:darkgreen"><h1>Please enter Movie information:</h1></legend>
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
    <button type="submit" class="btn btn-primary btn-lg btn-block"><h3>Submit</h3></button>
</form>
    <hr>
</div>



<jsp:include page="footer.jsp"/>

