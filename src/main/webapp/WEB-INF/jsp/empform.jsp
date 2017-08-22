<%-- 
    Document   : empform
    Created on : Aug 21, 2017, 1:57:13 PM
    Author     : anants
--%>

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
            <div class="center" style="padding:0px 300px 0px 300px">
                <h3 class="pink-text text-darken-3">Add a new Employee</h3>  
                <form method="post" action="save">    
                    <table >      
                        <tr>    
                            <td>Employee Id : </td>   
                            <td><input name="emp_id"  /></td>  
                        </tr>    
                        <tr>    
                            <td>Name :</td>    
                            <td><input name="name" /></td>  
                        </tr>   
                        <tr>    
                            <td>Salary :</td>    
                            <td><input name="salary" /></td>  
                        </tr>   
                        <tr>    
                            <td>Designation :</td>    
                            <td><input name="designation" /></td>  
                        </tr>  
                        <tr>    
                            <td>Domain :</td>    
                            <td><input name="domain" /></td>  
                        </tr>  

                        <tr>    
                            <td> </td>    
                            <td>
                                <button class="btn waves-effect waves-light pink darken-1" type="submit" name="action">Save
                                    <i class="material-icons right">send</i>
                                </button>
                            </td>    
                        </tr>    
                    </table>    
                </form>    
            </div>
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
