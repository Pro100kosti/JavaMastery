<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp"/>


<div class="container">
    <hr>
    <legend align="center" style = "color:darkred"><h1>All Directors</h1></legend>
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
    <c:forEach var="director" items="${director}">
        <tr>
            <th scope="row"><a href="${pageContext.request.contextPath}/directors/director/${director.id}"
                               class="badge badge-warning"><h3>${director.id}</h3></a></th>
            <td><a><h3>${director.first_name}</h3></a></td>
            <td><a><h3>${director.last_name}</h3></a></td>
            <td><a><h3>${director.birth_date}</h3></a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
    <hr>
</div>



<jsp:include page="footer.jsp"/>