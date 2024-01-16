<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Top Ten Songs</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#"><c:out value="Top Ten Song" /></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value='/dashboard' />">Dashboard</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-sm-5"> <!-- Controla el ancho del cuadro en pantallas pequeñas -->
                <div class="card border rounded shadow">
                    <div class="card-body">
                        <table class="table">
                            <tbody>
                                <c:forEach items="${musics}" var="music">
                                    <tr>
                                        <td><c:out value="${music.clasificacion}" /></td>
                                        <td><a href="<c:url value='/songs/${music.id}' />"><c:out value="${music.titulo}" /></a></td>
                                        <td><c:out value="${music.artista}" /></td>
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
