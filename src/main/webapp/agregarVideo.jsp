

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Rockola</title>
    <style>
        
        body {
            background-image: url('https://wallpaperdj.com/wallpapers/moonlight_party-1280x1024.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            font-family: Helvetica, sans-serif; 
            margin: 0;
            padding: 0;
        }
        
        body {
            background-color: violet; 
            font-family: Helvetica,  Brutalism; 
            margin: 0;
            padding: 0;
        }

        h1 {
            color: lightpink; 
        }

        form {
            background-color: cornsilk; 
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: purple; 
            padding: 10px 20px;
            border: lavenderblush;
            border-radius: 3px;
            cursor: pointer;
        }

        a {
            display: inline-block;
            margin-top: 10px;
            text-decoration: chartreuse;
            color: violet; 
        }
    </style>
</head>
<body>
    <h1>Sistema Reproductor de videos</h1>
    <form action="SvVideo" method="POST">
        <label for="idvideo">idVideo:</label>
        <input type="text" name="idvideo"><br>

        <label for="autor">Autor:</label>
        <input type="text" name="autor"><br>

        <label for="anio">Año:</label>
        <input type="text" name="anio"><br>

        <label for="categoria">Categoria:</label>
        <input type="text" name="categoria"><br>

        <label for="url">Url:</label>
        <input type="text" name="url"><br>

        <label for="letra">Letra:</label>
        <textarea id="id" name="name" rows="5" cols="10"></textarea><br>

        <input type="submit" value="Agregar Video">
    </form>
    <a href="index.jsp">Regresar al menu</a>
</body>
</html>
