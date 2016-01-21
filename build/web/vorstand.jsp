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
        <div class="container cont" style="display:none">
            <!--Nachrichten-->
            <h1>Vorstand</h1>
            <div class="wrapper">
                <div class="container">
                    <!--Vorstand-Card-->
                    <div class="vorstand-card">
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 card" id="vorstand-img-col-bg">
                                <div id="vorstand-img-box">
                                    <img src="http://placehold.it/140x140" alt="" class="img-circle img-responsive">
                                </div>
                            </div>
                            <div class="col-lg-5 sol-md-5 col-sm-5 col-xs-12 card truncate">
                                <table class="vorstand-table">
                                    <tr>
                                        <td><strong>Name: </strong>
                                        <td>Dominik Wieners</td>
                                    </tr>
                                    <tr>
                                        <td><strong>Funktion: </strong>
                                        <td>Verantwortlich für die Website</td>
                                    </tr>
                                    <tr>
                                        <td><strong>Telefon: </strong>
                                        <td><a href="tel:#">1234 1234</a></td>
                                    </tr>
                                    <tr>
                                        <td><strong>E-Mail: </strong></td>
                                        <td><a href="mailto:dom.wieners@gmx.net">dom.wieners@gmx.net</a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="vorstand-card">
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 card" id="vorstand-img-col-bg">
                                <div id="vorstand-img-box">
                                    <img src="http://placehold.it/140x140" alt="" class="img-circle img-responsive">
                                </div>
                            </div>
                            <div class="col-lg-5 sol-md-5 col-sm-5 col-xs-12 card">
                                <table class="vorstand-table">
                                    <tr>
                                        <td><strong>Name: </strong>
                                        <td>Max Mustermann</td>
                                    </tr>
                                    <tr>
                                        <td><strong>Funktion: </strong>
                                        <td>Hausmeister</td>
                                    </tr>
                                    <tr>
                                        <td><strong>Telefon: </strong>
                                        <td><a href="tel:#">1234 1234</a></td>
                                    </tr>
                                    <tr>
                                        <td><strong>E-Mail: </strong></td>
                                        <td><a href="#">max.mustermann@gmx.net</a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div><!--/wrapper-->
        </div><!--/container-->


        <%@include file="WEB-INF\jspf\footer.jsp" %>






        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/content.js"></script>
        <script>
            $(function () {
                $('#vorstand').addClass('active');
                $('.vorstand-table td').each(function() {
                    $(this).attr('title', $(this).html());
                });
            });
        </script>
    </body>
</html>
