<%-- 
    Document   : login
    Created on : Aug 23, 2017, 2:59:19 PM
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
                <h3 class="pink-text text-darken-3">Login</h3>  
                <form method="post" action="login">    
                    <table >      
                        <tr>    
                            <td>User Name : </td>   
                            <td><input type='text' name="username"  /></td>  
                        </tr>    
                        <tr>    
                            <td>Password :</td>    
                            <td><input type='password' name="password" /></td>  
                        </tr>   
                        <tr>    
                            <td> </td>    
                            <td>
                                <button class="btn waves-effect waves-light pink darken-1" type="submit" name="action">Sign In
                                    <i class="material-icons right">send</i>
                                </button>
                            </td>    
                        </tr>    
                    </table>    
                </form>    
            </div>
            <h5>
                <% try {
                        if (!request.getAttribute("error").equals("")) {
                            out.println(request.getAttribute("error"));
                        }
                    } catch (Exception e) {
                    }%>
            </h5>
            <h5>
                <% try {
                        if (!request.getAttribute("msg").equals("")) {
                            out.println(request.getAttribute("msg"));
                        }
                    } catch (Exception e) {
                    }%>
            </h5>
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
