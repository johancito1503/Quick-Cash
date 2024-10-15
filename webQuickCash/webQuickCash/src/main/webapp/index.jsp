<%-- 
    Document   : index
    Created on : 2/10/2024, 11:56:18 PM
    Author     : CRISTIAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <form action="index.jsp" method="post">
                        <div class="form-group">                
                            <label>Ingresa tu email</label>
                            <input type="text" class="form-control" name="emailUsuario" placeholder="Email">
                        </div>  
                        <div class="form-group">
                            <label>Ingresa tu clave</label>
                            <input type="password" class="form-control" name="claveUsuario" placeholder="Contraseña">
                        </div>  
                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </form> 
                    <form action="interfazAdmin.jsp">
                        <button type="submit" class="btn btn-primary">Enviar</button>
                        <%--<input type="submit" value="Ir a página 2">--%>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <div class="alert alert-primary" role="alert">
                        <%@ page import="core.persona"%>
                        <%
                            String email = request.getParameter("emailUsuario");
                            String clave = request.getParameter("claveUsuario");
                            String saludo = "Hola " + email;
                            if (email != null && clave != null) {
                                out.print(saludo);
                            } else {
                                out.print("Ingrese los datos solicitados");
                            }
                        %>
                    </div>   
                </div>
            </div>
        </div>
    </body>
</html>
