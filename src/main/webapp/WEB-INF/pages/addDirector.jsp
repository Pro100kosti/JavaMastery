<jsp:include page="header.jsp"/>



<div class="container">
    <hr>
    <legend align="center" style = "color:darkred"><h1>Please enter Director Information:</h1></legend>
<form method="POST" action="${pageContext.request.contextPath}/save-director" enctype="multipart/form-data">
    <div class="form-group">
        <label for="exampleInputEmail1">Director first name</label>
        <input type="text" name="first_name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter first name">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Director last name</label>
        <input type="text" name="last_name" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" placeholder="Enter last name">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Director date of birth</label>
        <input type="text" name="birth_date" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp" placeholder="Enter birth_date">
    </div>
    <button type="submit" class="btn btn-primary btn-lg btn-block"><h3>Submit</h3></button>
</form>
    <hr>
</div>



<jsp:include page="footer.jsp"/>
