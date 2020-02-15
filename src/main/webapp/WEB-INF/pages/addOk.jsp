<jsp:include page="header.jsp"/>


<div class="container">
    <hr>
<div class="alert alert-success" role="alert">
    <h4 class="alert-heading">Well done!</h4>
    <p>Creation Completed</p>
    <hr>
    <p class="mb-0">Have a nice day!! :)</p>
    <a class="btn btn-success" href="${pageContext.request.contextPath}/" role="button">Return to the main page</a>
    <a class="btn btn-warning" href="${pageContext.request.contextPath}/save-director" role="button">Creat Director</a>
    <a class="btn btn-warning" href="${pageContext.request.contextPath}/save-film" role="button">Creat Film</a>
</div>
    <hr>
</div>



<jsp:include page="footer.jsp"/>
