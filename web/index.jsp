<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.NewsBean"%>
<%@page import="model.NewsList"%>
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
     <div class="container cont" style="display:none">
       <!--Nachrichten-->
      <div class="row">
        <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
         <% int i = 0; %>   
         <h1>Nachrichten</h1>
        
         <div class="wrapper">
            <% for(NewsBean n : NewsList.liste){ %>
          <table cellpadding="10" class="card" id="news-card">
              <tr>
                <th align="left"><%=n.getUeberschrift()%></th>
                <td><em><%= n.getDatum() %></em></td>
              </tr>
              <tr>
                <td colspan="2">
                 <%= n.getNachricht() %>
                </td>
              </tr>
              <tr>
                <td colspan="2">
                    <a href="NewsService?do=read&id=<%=i%> ">
                        <button  class="btn btn-default" >Nachricht lesen</button>
                    </a>
                </td>
              </tr>
            </table>
             <%i++;%>
           <%}%>
          </div>
        </div>
          
        <!--Shoutbox-->
            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
               <h2>Shoutbox</h2>
             <div style="background: #fff;padding:10px;box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);">
               
                
                    <ul class="card shoutbox" id="shouts">
           
                    </ul>  
                
                 <div>
                    <input name="name" maxlength="50" type="text" class="form-control user-input" id="name" placeholder="Username" maxlength="10" autocomplete="off">
                    
                    <span id="word-count" class="help-block clearfix">240/240</span>
                   
                    <input name="message" maxlength="140" type="text" class="form-control shout-input" id="message" placeholder="Deine Nachricht" maxlength="10" autocomplete="off" onkeyup="keypressCounter()">
                   
                 </div>             
              </div>
          </div>
          </div>
      </div>

    </div>

   

     <%@include file="WEB-INF\jspf\footer.jsp" %>




    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/shoutbox.js"></script>
    <script src="js/content.js"></script>
    <script src="js/cookie.js"></script>
    <script>$(function(){$('#startseite').addClass('active')});</script>
  </body>
</html>
