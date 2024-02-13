<%-- 
    Document   : signup
    Created on : Feb 13, 2024, 10:38:50 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script> 
    <style>
       * {
    margin: 0px;
    padding: 0px;
}

body {
    background: url('img/programming-background-with-person-working-with-codes-computer.jpg');
    background-size: cover;
    background-attachment: fixed;
    height: 100vh;
    overflow: hidden;
} 

  


    </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content">
                            <h4 style="margin-top: 10px" class="center-align">Register Here!!</h4>  
                            <h5 id="msg" class="center-align"></h5>
                            <div class="form center-align">
                        <!--                    //creating form -->  
                      <form action="Register" method="post" id="myform">  
                          
                          <input type="text" name="user_name" placeholder="Enter Your Name" >
                          <input type="password" name="user_password" placeholder="Enter Your Password" >
                          <input type="email" name="user_email" placeholder="Enter Your Email" >
                          
                          <button type="submit"  class="btn  red">Submit</button>
                      </form>
    
                            </div> 
                            <div class="loader center-align" style="margin-top:10px; display:none; font-size: 20px;">
                                 <div class="preloader-wrapper big active">
                            <div class="spinner-layer spinner-blue">
                              <div class="circle-clipper left">
                                <div class="circle"></div>
                              </div><div class="gap-patch">
                                <div class="circle"></div>
                              </div><div class="circle-clipper right">
                                <div class="circle"></div>
                              </div>
                            </div>

                            <div class="spinner-layer spinner-red">
                              <div class="circle-clipper left">
                                <div class="circle"></div>
                              </div><div class="gap-patch">
                                <div class="circle"></div>
                              </div><div class="circle-clipper right">
                                <div class="circle"></div>
                              </div>
                            </div>

                            <div class="spinner-layer spinner-yellow">
                              <div class="circle-clipper left">
                                <div class="circle"></div>
                              </div><div class="gap-patch">
                                <div class="circle"></div>
                              </div><div class="circle-clipper right">
                                <div class="circle"></div>
                              </div>
                            </div>

                            <div class="spinner-layer spinner-green">
                              <div class="circle-clipper left">
                                <div class="circle"></div>
                              </div><div class="gap-patch">
                                <div class="circle"></div>
                              </div><div class="circle-clipper right">
                                <div class="circle"></div>
                                        </div>
                                      </div>
                                    </div>
                                 <h5>Please wait...</h5>

                            </div> 
                           
                        </div>
                    </div>
                </div> 
                
            </div>
        </div>
        <script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
  
<script>
    $(document).ready(function() {
        console.log("page is ready ......");

        $("#myform").on('submit', function(event) {
            event.preventDefault();
            var f = $(this).serialize();
            console.log(f); 
            $(".loader").show(); 
            $(".form").hide();
            
            $.ajax({
                url: "Register",
                data: f,
                type: 'post',
                success: function(data, textStatus, jqXHR) {
                    console.log(data);
                    console.log("successs...........");
                    $(".loader").hide(); 
                    $(".form").show(); 
                    if(data.trim()==='done'){
                        $('#msg').html("Successfully Registered...!!"); 
                        $('#msg').addClass('green-text');
                    } 
                    else{
                        $('#msg').html("Something went wrong on server...!!");
                        $('#msg').addClass('red-text');
                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.log("error............");
                    $(".loader").hide(); 
                    $(".form").show();
                    $('#msg').html("Something went wrong on server...!!"); 
                    $('#msg').addClass('red-text');
                }
            });
        });
    });
</script>


    </body>
</html>
