<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page  import="model.NewsBean" %>
<%@page import="model.NewsList"%>
<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="application-name" content="FanClub">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="theme-color" content="#3F51B5">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Fanclub</title>

    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png" />
    
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!--style.css-->
    <link href="style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <header>
       <%@include file="WEB-INF\jspf\navigation.jsp" %>  
   
   </header>
     <div class="container cont" style="display:none;">
       <!--Nachrichten-->
      <div class="row">
          <form action="NewsService" method="get" rol="form" class="newsform">
              <input type="hidden" name="do" value="save">

              <fieldset rol="form-group">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <legend>Angaben zum Autor:</legend>
              </div>
              <div class="col-lg-5 col-md-5 col-sm-8 col-xs-12">
                Vorname:<br>
                <div id="vn-is-success">
                    <input type="text" name="vorname" size="30" required="true" autofocus="autofocus" pattern="[A-Za-z]*" class="form-control" id="vorname" aria-describedby="inputSuccess2Status" onkeyup="checkInput()">
                    <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true" id="vn-correct-icon" style="display:none"></span><br>
                </div>
                Nachname:<br>
                 <div id="nn-is-success">
                    <input type="text" name="nachname" size="30" required="true" pattern="[a-zA-Z]*" class="form-control" id="nachname" aria-describedby="inputSuccess2Status" onkeyup="checkInput()">
                    <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true" id="nn-correct-icon" style="display:none"></span><br>
                 </div>    
                E-Mail:<br>
                 <div id="em-is-success">
                    <input type="email" name="email" size="30" required="true" class="form-control" id="email" aria-describedby="inputSuccess2Status" onkeyup="checkInput()">
                    <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true" id="em-correct-icon" style="display:none"></span><br>
                 </div>
              </div>
              </fieldset>

              <fieldset rol="from-group">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <legend>Nachricht:</legend>
              </div>
              <div class="col-lg-5 col-md-5 col-sm-8 col-xs-12">
                 Datum:<br>
                <div id="date-is-success">
                <input type="date" name="datum" class="form-control" id="date" aria-describedby="inputSuccess2Status" onkeyup="checkInput()">
                <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true" id="date-correct-icon" style="display:none"></span><br>
                </div>
                <p>Kategorie:<br>
                <select name="kategorie" class="form-control">
                    <option value="bundesliga">Bundesliga</option>
                    <option value="international" selected>International</option>
                    <option value="DFB Pokal">DFB Pokal</option>
                </select></p>



                Überschrift:<br>
                <div id="ue-is-success">
                    <input type="text" name="ueberschrift" size="30" class="form-control" id="ueberschrift" aria-describedby="inputSuccess2Status" onkeyup="checkInput()">
                    <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true" id="ue-correct-icon" style="display:none"></span>
                <div>
                <p>Nachricht:<br>
                    <div id="ms-is-success">
                    <textarea cols="50" rows="10" name="nachricht" class="form-control" id="message" aria-describedby="inputSuccess2Status" onkeyup="checkInput()">    
                    </textarea>
                     <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true" id="ms-correct-icon" style="display:none"></span> 
              </div>
            </fieldset>
            <fieldset rol="form-group">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
              <legend>Senden:</legend>
              </div>
              <div class="col-lg-5 col-md-5 col-sm-8 col-xs-12">
              <p>
              <input type="submit" class="btn btn-default" style="margin:2px;" ><input type="reset" class="btn btn-default" style="margin:2px;">
              </p>
            </div>
            </fieldset>
          </form>

        </div>
      </div>


    <%@include file="WEB-INF\jspf\footer.jsp" %>






    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/content.js"></script>
    <script src="js/checkForm.js"></script>
     <script>$(function(){$('#vnews').addClass('active')});</script>
  </body>
</html>
