<%-- 
    Document   : login
    Created on : 10-Apr-2015, 10:05:07 AM
    Author     : c0633648
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <script src="http://code.jquery.com/jquery.min.js"></script>
        <script>
            $(document).ready(function() {

           
            // Configure an On-Click Listener to Update the Form
            $('#login').click(function() {
            $.ajax({
                    url: "./web/advertise/login",
                    dataType: "text",
                    contentType: 'application/json; charset=UTF-8',
                    data: JSON.stringify({"email": $("#email").val(),
                            "password": $("#password").val()}),
                    method: "post",
                    success: function (data){
                    $("#result").html(data);
                    }
            });
            });
            });
        </script>
    </head>
    <body>
         <form >
             
            
            Email: <input id="email"></input>
            Password:  <input id="password"></input>
            <button id="login">LogIn</button>
            
            <div id="result"></div> 
        </form>
    </body>
</html>
