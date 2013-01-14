// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .



$("input#term").live("keyup", function() {
    var term = $(this);
    var span = $("span#search_highlight");
    if (term.val().indexOf("type: ") !== -1) {
        span.text("type:");
        span.show();
        term.css("padding-left", "16px");
        term.css("width", "189px");
    } else if (term.val().indexOf("name: ") !== -1) {
        span.text("name:");
        span.show();
        term.css("padding-left", "16px");
        term.css("width", "189px");
    } else if (term.val().indexOf("origin: ") !== -1) {
        span.text("origin:");
        span.show();
        term.css("padding-left", "16px");
        term.css("width", "189px");
    } else if (term.val().indexOf("company: ") !== -1) {
        span.text("company:");
        span.show();
        term.css("padding-left", "18px");
        term.css("width", "187px");
    } else {
        span.hide();
        term.css("padding-left", "5px");
        term.css("width", "200px");
    }
});

/* handle slider value change */
    $("#tea_rating").live('change', function() {
        var rangeVal = $("#tea_rating").val();
        $("span#rating").html(rangeVal);
    });

    /* input form slider */
    $("#tea-dropdown").live('click', function() {
        /* caching for performance */
        var new_tea = $("div#new-tea")
        var tea_dropdown = $("#tea-dropdown");
        if (new_tea.is(":hidden")) {
            tea_dropdown.css("background", "url('assets/dropdown-click.png')");
            new_tea.slideDown('slow');
            $("div#border-line").hide();
        } else {
            new_tea.slideUp("slow");
            tea_dropdown.css("background", "url('assets/dropdown.png')");
            $("div#border-line").show();
        }
    });

