<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Detalles</title>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="<c:url value='/dashboard' />">Dashboard</a>
    </nav>
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-sm-4">
          <div class="card mt-5">
            <div class="card-body">
              <p><strong>Title:</strong> ${music.titulo}</p>
              <p><strong>Artist:</strong> ${music.artista}</p>
              <p><strong>Rating(1-10):</strong> ${music.clasificacion}</p>
              <a href="<c:url value='/eliminar/${music.id}' />" class="btn btn-danger">Eliminar</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
