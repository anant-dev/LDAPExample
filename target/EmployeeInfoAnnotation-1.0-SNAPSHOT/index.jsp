<%-- 
    Document   : index.jsp
    Created on : Aug 22, 2017, 4:10:08 PM
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
        <style>
            body {
                display: flex;
                min-height: 100vh;
                flex-direction: column;
            }

            main {
                flex: 1 0 auto;
            }
        </style>
    </head>
    <body>
        <nav>
            <div class="nav-wrapper pink darken-3">
                <a href="#" class="brand-logo center">Employee Info</a>

            </div>
        </nav>
        <div class="container  valign-wrapper" style="height:650px">
            <div class="center">
                <a class="waves-effect waves-light btn pink darken-1" href="empform" style="height:300px;width:300px" ><b>Add Employee</b></a>
                <a class="waves-effect waves-light btn pink darken-1" href="viewemp" style="height:300px;width:300px; margin-left: 400px"><b>View Employee</b></a>
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
