let fnDesc = function()
{
    let attr = $(".active").attr("data-card");

    $.getJSON("../public/iteminfo.json", function(data) {
        $.each(data, function(i, obj) {
            if (obj.name === attr)
            {
                $("#insert").html(obj.description);
            }
        });
    });
};


$(document).ready(function() {

    //MET À JOUR LES HOVER DES BOUTONS DE LA NAVBAR

    $(".navbtn").mouseover( function () {

        $(this).css({"background": "rgba(255,255,255,0.31)", "border-radius":"50px", "box-shadow":"0 10px 16px 0 rgba(0,0,0,0.1)"});

    });

    $(".navbtn").mouseout( function () {

        $(this).css({"background": "none", "border-radius":"0px", "box-shadow":"none"});

    });

    //CREER LE TIMER POUR UNE DATE PRÉCISE

    let timer = setInterval(function() {

        let now = new Date().getTime();
        let countDownDate = new Date("Dec 22, 2019 15:37:25").getTime();


        let distance = countDownDate - now;

        let days = Math.floor(distance / (1000 * 60 * 60 * 24));
        let hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        let minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        let seconds = Math.floor((distance % (1000 * 60)) / 1000);

        $("#demo").html(days + "D " + hours + "H "+ minutes + "M " + seconds + "S ");

        if (distance < 0) {
            clearInterval(timer);
            $("#demo").html("0D 0H 0M 0S");
        }
    }, 1000);

    //CREER LE CAROUSEL DE LA PAGE D'ACCUEIL
    $num = $('.my-card').length;
    $even = $num / 2;
    $odd = ($num + 1) / 2;

    if ($num % 2 === 0) {
        $('.my-card:nth-child(' + $even + ')').addClass('active');
        $('.my-card:nth-child(' + $even + ')').prev().addClass('prev');
        $('.my-card:nth-child(' + $even + ')').next().addClass('next');
    } else {
        $('.my-card:nth-child(' + $odd + ')').addClass('active');
        $('.my-card:nth-child(' + $odd + ')').prev().addClass('prev');
        $('.my-card:nth-child(' + $odd + ')').next().addClass('next');
    }

    $('.my-card').click(function() {
        $slide = $('.active').width();
        console.log($('.active').position().left);

        if ($(this).hasClass('next')) {
            $('.card-carousel').stop(false, true).animate({left: '-=' + $slide});
        } else if ($(this).hasClass('prev')) {
            $('.card-carousel').stop(false, true).animate({left: '+=' + $slide});
        }

        $(this).removeClass('prev next');
        $(this).siblings().removeClass('prev active next');

        $(this).addClass('active');
        $(this).prev().addClass('prev');
        $(this).next().addClass('next');
    });

    //SET LES HEADERS DES ARTICLES EN VEDETTE AVEC LE % DE RABAIS
   /* $('.card-carousel').children().each(function (index) {

        $(this).children().children().text("Offre " + (index+1));

    }); */
    let pourcentage = 50;
    let promo = pourcentage +"% DE RABAIS*";
    $('.promos').children().text(promo);

    //AFFICHE LE DROPDOWN DU BOUTON OFFRE

    $('#btnOffre').click(function () {

        if ($('#offredd').hasClass('show'))
        {
            $('#offredd').removeClass('show');
        }
        else
        {
            $('#offredd').addClass('show');
        }

    });
    //QUAND ON CLIQUE SUR LES BOUTONS DU MENU OFFRE ON NOUS AMENE A LA PAGE OFFRE

    $('#offredd:button').click(function () {

        //$(window).attr('location','Offres.html');
        //$(location).attr('href','Offres.html');


    });

    //AFFICHE LE BOUTON CONNECTION/INSCRIPTION

    $('#connection').click(function () {

        if ($('#connectBtn').hasClass('show'))
        {
            $('#connectBtn').removeClass('show');
        }
        else
        {
            $('#connectBtn').addClass('show');
        }
    });

    $('#compte').click(function () {

        if ($('#comptebtn').hasClass('show'))
        {
            $('#comptebtn').removeClass('show');
        }
        else
        {
            $('#comptebtn').addClass('show');
        }
    });

    fnDesc();

});



//SI ON CLIQUE AILLEURS QUE LE BOUTON DE CONNECTION OU EN DEHORS DE LA BOX DU MODAL, ON FERME LES DROPDOWNS OU LE MODAL

$(window).click( function(event) {

    if (!event.target.matches('#connection'))
    {
        let myDropdown = $("#connectBtn");
        if (myDropdown.hasClass('show'))
        {
            myDropdown.removeClass('show');
        }
    }
    if (!event.target.matches('#btnOffre'))
    {
        let myDropdown = $("#offredd");
        if (myDropdown.hasClass('show'))
        {
            myDropdown.removeClass('show');
        }
    }
    //AFFICHE LA DESCRIPTION DE L'ARTICLE EN SELECTION

 /*   if ($('.active').attr("data-card") === "graphic")
    {
        $('.itemInfo').children().html("Les cartes graphiques GeForce® GTX 1660 Ti et 1660 mettent à votre disposition les performances graphiques révolutionnaires de l’architecture NVIDIA Turing™. Grâce à leurs performances foudroyantes rivalisant avec celles de la GeForce GTX 1070*, elles vous offriront un rendu graphique ultra-rapide dans les meilleurs jeux du moment, y compris les plus récents.");

    }
    if ($('.active').attr("data-card") === "PC")
    {
        $('.itemInfo').children().html("Cooler Master Cosmos II Ultra Tower Boîtier d'ordinateur avec corps en aluminium et acier RC-12-KKN1 (Discontinué par le fabricant) Pro RGB Mid Tower");
    }
    if ($('.active').attr("data-card") === "display")
    {
        $('.itemInfo').children().html("Dimensions physiques avec support (L x H x P) : 52,0 x 36,8 x 22,1 cm. Dimensions physiques sans support (L x H x P) : 56 x 31 x 3 cm.");
    }
    if ($('.active').attr("data-card") === "saucisse")
    {
        $('.itemInfo').children().html("Viandes séparées mécaniquement (poulet et/ou porc et/ou dinde), porc et/ou boeuf; eau, farine de blé, amidon de maïs modifié,sel,  lactate de potassium, protéines végétales hydrolysées (soya), épices, moutarde moulue, diacétate de sodium, érythorbate de sodium,  nitrite de sodium, saveur de fumée, substances laitières, extraits secs de glucose, phosphate de sodium, fumée. Contient: Blé, soya,  moutarde, lait.");
    } */
 fnDesc();
});

//AFFICHE LE MODAL DE CONNECTION QUAND ON CLIQUE SUR LE BOUTON SE CONNECTER

$('#login').click(function () {

    $('#modal').fadeIn(500);
    $('#connectBtn').removeClass('show');
});

//FERME LE MODAL AVEC LE BOUTON X

$('.close').click(function () {

    $('#modal').fadeOut(300);
    $('#email').val("");
    $('#password').val("");

});

//MET À JOUR LES CHECKBOXES DU FORMULAIRE
$(':checkbox').click(function () {

    $(':checkbox').prop('checked', false);
    $(this).prop('checked', true)

});

//PRÉVIENT LE DEFAULT ACTION SUR LE BOUTON SUBMIT

$('#formInscription').submit(function () {


    if ($('#passwordConfirm').val() === $('#passwordInsc').val())
    {
        $('#passwordConfirm').css("background-color", "white");
    }
    else {
        $('#passwordConfirm').css("background-color", "red");
    }
    if ($('#emailConfirm').val() === $('#emailInsc').val())
    {
        $('#emailConfirm').css("background-color", "white");
    }
    else {
        $('#emailConfirm').css("background-color", "red");
    }

});