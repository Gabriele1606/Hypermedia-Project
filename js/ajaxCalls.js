/*
 * Telecom Italia Mobile: Hypermedia Project 2015-16
 * ajaxCalls.js
 * Set of functions to retrieve data from database fetched via PHP
 * Author: Riccardo Cannistrà, Alessio Dichio, Gabriele Bressan
 */

 function getPromoIndex() {
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "php/getPromoIndex.php", //Relative or absolute path to file.php file
        data: '',
        success: function(response) {

            var json=JSON.parse(response);

            $("#mainTitle").html(json[0].title);
            
            $("#desc").html(json[0].descrizione);

            $("#left-image").html(json[0].left_image);

            $("#right-image").html(json[0].right_image);

        },
        error: function(request,error)
        {
            console.log("Error");
        }
    });

}


// retrieve list of categories from the db
function getCategorie(categoria,callback){

    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "php/getCategorie.php", //Relative or absolute path to file.php file
        data: {categoria:categoria},
        success: function(response) {

            var categorie=JSON.parse(response);
            var nome;
            var immagine;
            var descrizione;
            for(var i=0;i<categorie.length;i++){
                nome=categorie[i].nome;
                descrizione=categorie[i].descrizione;
                immagine=categorie[i].immagine;
                $(".mainTitle"+i).html(nome);
                $(".descrizione"+i).html(descrizione);
                $(".immagine"+i).html(immagine);
            }

            callback();
        },
        error: function(request,error)
        {
            console.log("Error");
        }
    });

}

function getIntro(tabella,categoria,callback) {
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "php/getIntro.php", //Relative or absolute path to file.php file
        data: {tabella:tabella, categoria:categoria},
        success: function(response) {

            var intro=JSON.parse(response);
            var content='';
            for(var i=0;i<intro.length;i++){
                content+=intro[i].intro;
            }

            $(".products").append(content);

            callback();
        },
        error: function(request,error)
        {
            console.log("Error");
        }
    });
}

function getPromoIntro(tabella,callback) {
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "php/getPromoIntro.php", //Relative or absolute path to file.php file
        data: {tabella:tabella},
        success: function(response) {

            var intro=JSON.parse(response);
            var content='';
            for(var i=0;i<intro.length;i++){
                content+=intro[i].intro;
            }

            $(".products").append(content);

            callback();
        },
        error: function(request,error)
        {
            console.log("Error");
        }
    });
}


function getDeviceInfo(tabella,categoria,id,callback) {
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "php/getDeviceInfo.php", //Relative or absolute path to file.php file
        data: {tabella:tabella, categoria:categoria, id:id},
        success: function(response) {

            var info=JSON.parse(response);
            var nome=info[0].nome;
            $(".nome").append(nome);
            $(".immagine").append(info[0].immagine);
            $(".icone").append(info[0].icone);
            $(".caratteristiche").append(info[0].caratteristiche);
            $(".colori").append(info[0].colori);
            $(".compra").append(info[0].compra);
            $(".caratteristichetecniche").append(info[0].caratteristichetecniche);
            $("#deviceName").html(info[0].buttonName);

            callback();
        },
        error: function(request,error)
        {
            console.log("Error");
        }
    });
}

function getDeviceInfoTecniche(tabella,id,callback) {
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "php/getDeviceInfoTecniche.php", //Relative or absolute path to file.php file
        data: {tabella:tabella, id:id},
        success: function(response) {

            var info=JSON.parse(response);
            $(".caratteristichetecniche").append(info[0].caratteristichetecniche);
            $(".button").append(info[0].button);
            

            callback();
        },
        error: function(request,error)
        {
            console.log("Error");
        }
    });
}

function getPlanInfo(tabella,categoria,id,callback) {
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "php/getPlanInfo.php", //Relative or absolute path to file.php file
        data: {tabella:tabella, categoria:categoria, id:id},
        success: function(response) {
            var info=JSON.parse(response);
            var promo=info[0].promo;
            $("#immagine").append(info[0].immagine);
            $("#smartlifeName").html(info[0].nome);
            $(".nome").append(info[0].nome);
            $("#contenuti").append(info[0].contenuti);
            $("#descrizione").append(info[0].descrizione);
            $("#prezzo").append(info[0].prezzo);
            if(promo!="NULL") {
                $("#promo").append(promo);
                $("#morePromotionsButton").html('<i class="btn btn-primary"><a href="#'+tabella+'&'+'promotions">More Promotions</a></i>');  
            }
            $("#activation").append(info[0].attivazione);
            $("#faqs").append(info[0].faqs);

            callback();
        },
        error: function(request,error)
        {
            console.log("Error");
        }
    });
}

function getAssistanceInfo(tabella,categoria,id,callback) {
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "php/getAssistanceInfo.php", //Relative or absolute path to file.php file
        data: {tabella:tabella, categoria:categoria, id:id},
        success: function(response) {

            var info=JSON.parse(response);
            $(".nome").append(info[0].nome);
            $("#immagine").append(info[0].immagine);
            $("#descrizione").append(info[0].descrizione);
            $("#assistanceName").html(info[0].nome);
            $("#contenuto").html(info[0].contenuto);
            callback();
        },
        error: function(request,error)
        {
            console.log("Error");
        }
    });
}

//function used to retrieve combined devices from a specific smart life service
function getCombinedDevices(categoria,id,callback) {
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "php/getCombinedDevices.php", //Relative or absolute path to file.php file
        data: {tabella:'smartlifeservices', categoria:categoria, id:id},
        success: function(response) {
            var info=JSON.parse(response);
            var nome=info[0].nome;
            $("#fordevices").append(info[0].fordevices);
            $("#smartlifeName").html(nome);
            $("#smartlifeTitle").append(nome);
            $("#smartlifeName").attr("href","#smartlifeservices&"+categoria+"&"+id);
            $("#backToProduct").attr("href","#smartlifeInfo&"+categoria+"&"+id);
            $("#backToProduct").html("Back to "+nome);


            callback();
        },
        error: function(request,error)
        {
            console.log("Error");
        }
    });
}
    
    function getCombinedDevicesForAssistance(categoria,id,callback) {
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "php/getCombinedDevicesForAssistance.php", //Relative or absolute path to file.php file
        data: {tabella:'assistanceservices', categoria:categoria, id:id},
        success: function(response) {
            var info=JSON.parse(response);
            var nome=info[0].nome;
            $("#fordevices").append(info[0].fordevices);
            $("#assistanceName").html(nome);
            $("#assistanceTitle").append(nome);
            $("#immagine").append(info[0].immagine);
            $("#assistanceName").attr("href","#assistanceservices&"+categoria+"&"+id);
            $("#backToProduct").attr("href","#assistanceServicesInfo&"+categoria+"&"+id);
            $("#backToProduct").html("Back to "+nome);


            callback();
        },
        error: function(request,error)
        {
            console.log("Error");
        }
    });
    
}

//function used to retrieve combined Smart life from a specific devices
function getCombinedSmartLife(categoria,id,callback) {
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "php/getCombinedSmartLife.php", //Relative or absolute path to file.php file
        data: {tabella:'devices', categoria:categoria, id:id},
        success: function(response) {
            var info=JSON.parse(response);
            $("#forsmartlife").append(info[0].nome);
            $("#forsmartlife").append(info[0].forsmartlife);
            $("#backToProduct").attr("href","#deviceInfo&"+info[0].categoria+"&"+info[0].id);
            $("#backToProduct").html("Back to "+info[0].buttonName);
            $("#deviceName").attr("href","#deviceInfo&"+categoria+"&"+id);
            $("#deviceName").html(info[0].buttonName);


            callback();
        },
        error: function(request,error)
        {
            console.log("Error");
        }
    });
}
//function used to retrieve combined Smart life from a specific devices
function getCombinedAssistantServices(categoria,id,callback) {
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "php/getCombinedAssistantServices.php", //Relative or absolute path to file.php file
        data: {tabella:'devices', categoria:categoria, id:id},
        success: function(response) {
            var info=JSON.parse(response);
            $("#forassistantservices").append(info[0].nome);
            $("#forassistantservices").append(info[0].forassistantservices);
            $("#backToProduct").attr("href","#deviceInfo&"+info[0].categoria+"&"+info[0].id);
            $("#backToProduct").html("Back to "+info[0].buttonName);
            $("#deviceName").html(info[0].buttonName);
            $("#deviceName").attr("href","#deviceInfo&"+categoria+"&"+id);


            callback();
        },
        error: function(request,error)
        {
            console.log("Error");
        }
    });
}



