<%-- 
    Document   : pagina2
    Created on : 14/10/2024, 08:05:51 PM
    Author     : CRISTIAN
--%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Lista de Empleados</title>
    </head>
    <body>
        <%
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
        %>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">    
                    <table class="table table-dark table-striped">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">NOMBRE</th>
                                <th scope="col">EMAIL</th>
                                <th scope="col">TELÉFONO</th>
                                <th scope="col">SALDO</th>
                                <th scope="col">CUENTA</th>
                                <th scope="col">#CUENTA</th>
                                <th scope="col">#IDENTIDAD</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost/bancoweb?user=root");
                                    st = con.createStatement();
                                    rs = st.executeQuery("SELECT * FROM `cliente`;");
                                    while (rs.next()) {
                            %>
                            <tr>
                                <th scope="row"><%= rs.getString(1)%></th>
                                <td><%= rs.getString(2)%></td>
                                <td><%= rs.getString(3)%></td>
                                <td><%= rs.getString(4)%></td>
                                <td><%= rs.getString(5)%></td>                               
                                <td><%= rs.getString(7)%></td>
                                <td><%= rs.getString(8)%></td>
                                <td><%= rs.getString(9)%></td>
                            </tr> 
                            <%
                                    }
                                } catch (Exception e) {
                                    out.print("ERROR: " + e);
                                }
                            %>                  
                        </tbody>

                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
