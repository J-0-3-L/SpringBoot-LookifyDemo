<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-light">
        <a class="navbar-brand" style="color: black;"><c:out value="Songs by artist: ${param.artista}" /></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <form class="form-inline mx-auto my-2 my-lg-0" action="/buscar" method="post">
                <input class="form-control mr-sm-2" type="text" name="artista" placeholder="Buscar artista">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link"  style="color: black;" href="<c:url value='/dashboard' />">Dashboard</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-sm-5">
                <div class="card border rounded shadow">
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Rating</th>
                                    <th>Accion</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${musics}" var="music">
                                    <tr>
                                        <td><a href="<c:url value='/songs/${music.id}' />"><c:out value="${music.titulo}" /></a></td>
                                        <td><c:out value="${music.clasificacion}" /></td>
                                        <td>
                                            <a href="<c:url value='/eliminar/${music.id}' />" class="btn btn-danger">Eliminar</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
