<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp"/>



<div class="container">
    <hr>
    <legend align="center" style = "color:darkgreen"><h1>Information about Film ${film.name}:</h1></legend>
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col"><h3>No.</h3></th>
            <th scope="col"><h3>Name</h3></th>
            <th scope="col"><h3>Release date</h3></th>
            <th scope="col"><h3>Genre</h3></th>
            <th scope="col"><h3>Director</h3></th>
        </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row"><h3>${film.id}</h3></th>
                <td><a><h3>${film.name}</h3></a></td>
                <td><a><h3>${film.release_date}</h3></a></td>
                <td><a><h3>${film.genre}</h3></a></td>
                <td><a class="badge badge-light"><h3>${film.director_id}</h3></a></td>
            </tr>
        </tbody>
    </table>
    <a class="btn btn-success btn-lg btn-block" href="${pageContext.request.contextPath}/films" role="button">Return to Films</a>
    <hr>
</div>





<jsp:include page="footer.jsp"/>