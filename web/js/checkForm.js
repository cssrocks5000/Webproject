function isSafari() {
   if (navigator.userAgent.search("Safari") >= 0 && navigator.userAgent.search("Chrome") < 0) {
     return true;
   }
}

function validDate(thisdate){
       var validDate= /\d{2}\.\d{2}\.\d{4}/;
       return validDate.test(thisdate);

}

function validEmail(email){
    var testEmail = /\S+@\S+\.\S+/;
    return testEmail.test(email);
}

function checkInput(){
    
    
    
    
    var vorname = $('#vorname').val();
    var nachname = $('#nachname').val();
    var email = $('#email').val();
    var date = $('#date').val();
    
    
    if(vorname !== null){
   
        $('#vn-is-success').addClass('has-success has-feedback');
        $('#vn-correct-icon').css('display','block');
    }
    
    if(vorname === ""){
        $('#vn-is-success').removeClass('form-group has-success has-feedback');
        $('#vn-correct-icon').css('display','none');
    }
    
    if(nachname !== null){
   
        $('#nn-is-success').addClass('has-success has-feedback');
        $('#nn-correct-icon').css('display','block');       
    }
    
    if(nachname === ""){
        $('#nn-is-success').removeClass('form-group has-success has-feedback');
        $('#nn-correct-icon').css('display','none');
        
      
    
    }
    
    if(validEmail(email) === true){
        $('#em-is-success').addClass('has-success has-feedback');
        $('#em-correct-icon').css('display','block');
    }
    
    if(validEmail(email) === false){
        $('#em-is-success').removeClass('form-group has-success has-feedback');
        $('#em-correct-icon').css('display','none');
    
    }
    
    if(validDate(date) === true){
        $('#date-is-success').addClass('has-success has-feedback');
        $('#date-correct-icon').css('display','block');
    }
    
    if(validDate(date) === false){
        $('#date-is-success').removeClass('form-group has-success has-feedback');
        $('#date-correct-icon').css('display','none');   
    }
     

    
  
     
}


$(function(){
   
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1;
    var yyyy = today.getFullYear();
    
    var todaysDate = null;
    
    if(dd<10)
        dd = '0' + dd;
    
    if(mm<10)
        mm = '0' + mm;
    
    todaysDate = yyyy+'-'+mm+'-'+dd;
    
    if(isSafari()){
        todaysDate = dd+'.'+mm+'.'+yyyy;
        console.log(todaysDate);
    }
    
    $('#date').val(todaysDate);
    
    var thisdate = $('#date').val();
    
    
    
    if(validDate(thisdate) === true){
        $('#date-is-success').addClass('has-success has-feedback');
        $('#date-correct-icon').css('display','block');
        
    }
    
    if(validDate(thisdate) === false){
        $('#date-is-success').removeClass('form-group has-success has-feedback');
        $('#date-correct-icon').css('display','none');
    
    }
    
  
    
});


 $('.newsform').submit(function(){
     
    var vorname = $('#vorname').val();
    var nachname = $('#nachname').val();
    var email = $('#email').val();
 
     var formok = true;
     
     console.log(validEmail(email));
    
    if(isSafari()){
        if( vorname === ""){
            alert("Bitte geben Sie Ihren Vornamen ein.");
            $('#vorname').focus();
            formok = false;
        }else if( nachname === ""){
            alert("Bitte geben Sie Ihren Nachnamen ein.");
            $('#nachname').focus();
            formok = false;
        }else if(validEmail(email) === false){
            alert("Keine gültige E-Mail.");
            $('#email').focus();
            formok = false;
        }
    
      return formok;
    
     }
});