
$(function () {


    window.setInterval(LoadShouts, 1000);

    if (!Cookies.get('user')) {
        Cookies.set('user', 'User ' + Math.floor((Math.random() * 100) + 1) +'');
    }

    $('#name').val(Cookies.get('user'));
});

var lastShout = 0;

function LoadShouts() {



    $.get(
            "resources/shoutbox",
            function (result) {

                for (lastShout; lastShout < result.length; lastShout++) {
                    $("#shouts").append("<li id='shout' style='display:none'><div><strong>" + result[lastShout].name + " </strong><span style='color:#c3c3c3'>(" + result[lastShout].datum + ")</span><strong>: </strong></div>" + result[lastShout].message + "</li>");
                    $("#shouts li").fadeIn();
                    $('#shouts').stop().animate({scrollTop: $("#shouts")[0].scrollHeight}, 800);
                }
            }
    );



}




$("#message, #name").keypress(function (e) {
    if (e.which === 13) {

        e.preventDefault();


        var name = $("#name").val();
        var text = $("#message").val();

        if (name !== Cookies.get('user')) {
            Cookies.set('user', name);
        }

        text = text.replace(/:\)/g, "<img src='img/smile.png' border='0' class='smiley'>");
        text = text.replace(/:\(/g, "<img src='img/sad.png' border='0' class='smiley'>");
        text = text.replace(/:D/g, "<img src='img/grinning.png' border='0' class='smiley'>");
        text = text.replace(/:\*/g, "<img src='img/kiss.png' border='0' class='smiley'>");
        text = text.replace(/<3/g, "<img src='img/love.png' border='0' class='smiley'>");




        if (!name) {

            alert("Bitte geben Sie Ihren Usernamen ein.");


        } else if (!text) {

            alert("Geben Sie bitte Ihre Nachricht ein.");

        } else {

            $.ajax({
                type: "PUT",
                contentType: "application/json",
                url: "resources/shoutbox",
                dataType: "json",
                data: JSON.stringify({"name": name, "message": text}),
                success: function (result) {

                    LoadShouts();
                }
            });

            $("#message").val('');

        }
    }

});

function keypressCounter(){
     
    //Anzahl der Buchstaben
    var maxlength = 240;
    
    
   
    //Text auslesen
    var text = document.getElementById('message').value;
    var n = text.length;
    
   
    //Grenze
    if(n == maxlength){
        $('.shout-input').css('border','2px solid red');
    }else{
        $('.shout-input').css('border','1px solid #ccc');
    }
            
    
    //Ausgabe
    document.getElementById('word-count').innerHTML = " " +(maxlength - n) + "/240";
    
}