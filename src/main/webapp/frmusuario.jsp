<%@page import="com.emergentes.modelo.Usuario"%>
<%
    Usuario usuario = (Usuario)request.getAttribute("usuario");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
        <h1>Nuevo Registro</h1>
        <form action="UsuarioController" method="post" >
            <input type="hidden" name="id" value="${usuario.id}" />
            <table>
            <div class="mb-3" >
                <label class="form-label" >Nombre</label>
                <input class="form-control" type="text" name="nombre" value="<%= usuario.getNombre() %>" />
            </div>
            <div class="mb-3" >
                <label class="form-label" >Correo</label>
                <input class="form-control" type="text" name="correo" value="${usuario.correo}" />
            </div>
            <div class="mb-3" >
                <label class="form-label" >Clave</label>
                <input class="form-control" type="text" name="clave" value="${usuario.clave}" />
            </div>
            <div class="form-group">
                    <input type="submit" value="Procesar" class="btn btn-primary" />
            </div>
            </table>
        </form>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        </div>
    </body>
</html>
