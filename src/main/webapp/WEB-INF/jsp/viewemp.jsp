<%-- 
    Document   : viewemp
    Created on : Aug 21, 2017, 1:58:49 PM
    Author     : anants
--%>

<%@page import="java.util.List"%>
<%@page import="com.mindfire.beans.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>

        <nav>
            <div class="nav-wrapper pink darken-3">
                <a href="#" class="brand-logo center">Employee Info</a>

            </div>
        </nav>
        <div class="container  center" style="height:650px">
           
                <h3 class="pink-text text-darken-3">Employees List</h3>  
                <table class="striped" border="2" width="70%" cellpadding="2">  
                    <tr><th>Emp Id</th><th>Name</th><th>Salary</th><th>Designation</th><th>Domain</th><th>Edit</th><th>Delete</th></tr>  
                            <% List<Employee> list = (List) request.getAttribute("list");%>
                            <% for (Employee ls : list) {%>
                    <tr>  
                        <td><%=ls.getEmp_id()%></td>  
                        <td><%=ls.getName()%></td>  
                        <td><%=ls.getSalary()%></td>  
                        <td><%=ls.getDesignation()%></td> 
                        <td><%=ls.getDomain()%></td>  
                        <td><a href="editemp/<%=ls.getId()%>" class="blue-text text-darken-3">Edit</a></td>  
                        <td><a href="deleteemp/<%=ls.getId()%>"  class="red-text text-darken-3">Delete</a></td>  
                    </tr>  
                    <%}%>
                </table>  
                <br/>  
                <a href="empform" class="waves-effect waves-light btn pink darken-1">Add New Employee</a>
                <a href="logout" class="waves-effect waves-light btn pink darken-1" style="margin-left: 100px">Logout</a>
           
        </div>

        <footer class="page-footer pink darken-3">

            <div class="footer-copyright">
                <div class="container">
                    © 2014 Copyright Text
                    <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
                </div>
            </div>
        </footer>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
    </body>
</html>
