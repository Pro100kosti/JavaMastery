<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp"/>



<div class="container">
    <hr>
    <legend align="center" style = "color:darkred"><h1>Information about Director ${director.first_name}:</h1></legend>
    <table class="table">
        <thead class="thead-dark">
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

    <hr>
    <legend align="center" style="color:darkred"><h1>Films:</h1></legend>

    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col"><h3>No.</h3></th>
            <th scope="col"><h3>Name</h3></th>
            <th scope="col"><h3>Release date</h3></th>
            <th scope="col"><h3>Genre</h3></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="film" items="${director.films}">
            <tr>
                <th scope="row"><h3>${film.id}</h3></th>
                <td><a><h3>${film.name}</h3></a></td>
                <td><a><h3>${film.release_date}</h3></a></td>
                <td><a><h3>${film.genre}</h3></a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a class="btn btn-success btn-lg btn-block" href="${pageContext.request.contextPath}/directors" role="button">Return to Directors</a>
    <hr>
</div>





<jsp:include page="footer.jsp"/>



