

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Rockola</title>
    <style>
        /* Estilos para nuestros botones */
        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: violet;
            color: #fff;
            border: lawngreen;
            cursor: pointer;
            text-decoration: none;
            border-radius: 5px;
            margin: 5px;
        }

        .button:hover {
            background-color: aqua;
        }

        
        
        /* Estilo añadir imagen de fondo a nuestra página */
        
        
        
        body {
            background-image: url('https://wallpaperdj.com/wallpapers/moonlight_party-1280x1024.jpg'); 
            background-size: cover; /* Ayuda a Ajusta la imagen al tamaño de nuestra */
            background-repeat: no-repeat; /* Ayuda para que nuestra imagen no se repita */
            background-attachment: fixed; /* Ayuda a la Fijacion de la imagen para que no se desplace con el contenido */
        }
    </style>
</head>
<body>
    <h1>Sistema Reproductor de videos</h1>
    <ul>
        <li><a href="agregarVideo.jsp" class="button">Ingresar un nuevo video</a></li>
    </ul>
</body>
</html>
