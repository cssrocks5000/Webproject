<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
      <%@include file="jspf\navigation.jsp" %>  
   </header>
   <jsp:useBean id="bean" class="model.NewsBean" scope="request" />
     <div class="container" style="display:none;">
       <!--Nachrichten-->
      <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
              <h1><jsp:getProperty name="bean" property="ueberschrift"/></h1>  
            <article>
                <table class="table">            
                  <tr>
                      <td><span class="glyphicon glyphicon-user"></span><div class="about-author"><jsp:getProperty name="bean" property="vorname" /> <jsp:getProperty name="bean" property="nachname" /></div></td>
                      <td><span class="glyphicon glyphicon-envelope"></span><div class="about-author"><a href="mailto:<jsp:getProperty name="bean" property="email" />"><jsp:getProperty name="bean" property="email" /></a></div></td>
                      <td><span class="glyphicon glyphicon-calendar"></span><div class="about-author"><jsp:getProperty name="bean" property="datum" /></div></td>
                  </tr>
                  <tr>
                  <td colspan="3">
                    <jsp:getProperty name="bean" property="nachricht"/>
                  </td>
                  </tr>
                </table>
            </article>
          </div>
        </div>
      </div>

    

    <%@include file="jspf\footer.jsp" %>





    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/content.js"></script>
  </body>
</html>
