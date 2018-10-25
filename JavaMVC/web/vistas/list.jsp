<%-- 
    Document   : list
    Created on : 24-oct-2018, 20:35:13
    Author     : salas
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Persona"%>
<%@page import="modelDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de personas en la base de datos</h1>
        <table>
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Address</td>
                <td>Salary</td>
            </tr>
            <%
                PersonaDAO dao = new PersonaDAO();
                List<Persona> list = dao.listar();
                Iterator<Persona>iter = list.iterator();
                Persona per = null;
                while (iter.hasNext()) {          
                    per = iter.next();
                    %>
                        <tr>
                            <td><%=per.getId() %></td>
                            <td><%=per.getName() %></td>
                            <td><%=per.getAddress() %></td>
                            <td><%=per.getSalary()%></td>
                        </tr>
                    <%  
                }
            %>
        </table>
    </body>
</html>
