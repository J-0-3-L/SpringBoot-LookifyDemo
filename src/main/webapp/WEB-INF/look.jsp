<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lookify!</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Lookify</a>
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/songs/new' />">Add New</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/search/topTen' />">Top Songs</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0" action="/buscar" method="get">
            <input class="form-control mr-sm-2" type="text" name="artista" placeholder="Search Artist">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search Artist</button>
        </form>
    </nav>

    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-sm-5">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-bordered">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Rating</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${musics}" var="music">
                                <tr>
                                    <td><a href="<c:url value='/songs/${music.id}' />"><c:out value="${music.titulo}" /></a></td>
                                    <td><c:out value="${music.clasificacion}" /></td>
                                    <td>
                                        <a href="<c:url value='/eliminar/${music.id}' />" >Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>


