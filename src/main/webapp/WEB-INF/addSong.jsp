<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Song</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="<c:url value='/dashboard' />">Dashboard</a>
    </nav>
    
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-sm-4">
                <div class="card border rounded shadow">
                    <div class="card-body">
                        <form action="<c:url value='/songs/new' />" method="post">
                            <div class="form-group">
                                <label for="title">Title:</label>
                                <input type="text" name="titulo" value="${music.titulo}" class="form-control" minlength="5" required>
                            </div>
                            <div class="form-group">
                                <label for="artist">Artist:</label>
                                <input type="text" name="artista" value="${music.artista}" class="form-control" minlength="5" required>   
                            </div>
                            <div class="form-group">
                                <label for="rating">Rating (1-10):</label>
                                <input type="number" name="clasificacion" value="${music.clasificacion}" class="form-control" min="1" max="10" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Add Song</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>


