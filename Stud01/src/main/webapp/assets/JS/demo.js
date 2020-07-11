(function ($) {
  var my_skins = ["bg-pink", "bg-yellow", "bg-orange", "bg-teal", "bg-shade9", "bg-shade10", "bg-shade11", "bg-shade12", "bg-shade13",
  "bg-shade1", "bg-shade2", "bg-shade3", "bg-shade4", "bg-shade5", "bg-shade6", "bg-shade7", "bg-shade8",
  "bg-grad1", "bg-grad2", "bg-grad3", "bg-grad4", "bg-grad5", "bg-grad6", "bg-grad7", "bg-grad8", "bg-grad9", "bg-grad10", "bg-grad11"];

  $RightSetting = function () {
    $("#TopColor").append("<div id='TopNav' style='padding-top: 32px;padding-left: 18px;display: flow-root;'>"
    +"<p class='text-center no-margin' style='font-size: 12px'>Color Pallete for Top Navigation</p></div>")
    var topnav_Pink = $("<div  />", { style: "float:left; width:17%; " })
      .append("<a href='javascript:void(0);' data-skin='bg-pink' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background: rgb(196, 8, 139);'></span>"
        + "</a>");
    $('#TopNav').append(topnav_Pink);
    var topnav_Yellow = $("<div />", { style: "float:left; width:17%; " })
      .append("<a href='javascript:void(0);' data-skin='bg-yellow' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:rgb(93, 170, 206)'></span></div>"
        + "</a>");
    $('#TopNav').append(topnav_Yellow);
    var topnav_Orange = $("<div  />", { style: "float:left; width:17%; " })
      .append("<a href='javascript:void(0);' data-skin='bg-orange' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:rgb(229, 167, 126);'></span></div>"
        + "</a>");
    $('#TopNav').append(topnav_Orange);
    var topnav_Tale = $("<div />", { style: "float:left; width:17%; " }, { id: "tale" })
      .append("<a href='javascript:void(0);' data-skin='bg-teal' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:teal'></span></div>"
        + "</a>");
    $('#TopNav').append(topnav_Tale);
    var topnav_shade1 = $("<div  />", { style: "float:left; width:17%; " })
      .append("<a href='javascript:void(0);' data-skin='bg-shade1' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:#88d1d1'></span>"
        + "</a>");
    $('#TopNav').append(topnav_shade1);

    var topnav_shade2 = $("<div />", { style: "float:left; width:17%; " })
      .append("<a href='javascript:void(0);' data-skin='bg-shade2' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:#d3d3df;'></span></div>"
        + "</a>");
    $('#TopNav').append(topnav_shade2);

    var topnav_shade3 = $("<div />", { style: "float:left; width:17%; " })
      .append("<a href='javascript:void(0);' data-skin='bg-shade3' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:#0baed7;'></span></div>"
        + "</a>");
    $('#TopNav').append(topnav_shade3);
    var topnav_shade4 = $("<div />", { style: "float:left; width:17%; " })
      .append("<a href='javascript:void(0);' data-skin='bg-shade4' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:#81ce94;'></span></div>"
        + "</a>");
    $('#TopNav').append(topnav_shade4);
    var topnav_shade5 = $("<div />", { style: "float:left; width:17%; " })
    .append("<a href='javascript:void(0);' data-skin='bg-shade5' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
      + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:#ff815ec2;'></span></div>"
      + "</a>");
  $('#TopNav').append(topnav_shade5);
  var topnav_shade6 = $("<div />", { style: "float:left; width:17%; " })
    .append("<a href='javascript:void(0);' data-skin='bg-shade6' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
      + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:#3a81f1;'></span></div>"
      + "</a>");
  $('#TopNav').append(topnav_shade6);
  var topnav_shade7 = $("<div />", { style: "float:left; width:17%; " })
    .append("<a href='javascript:void(0);' data-skin='bg-shade7' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
      + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background: #4b5153;'></span></div>"
      + "</a>");
  $('#TopNav').append(topnav_shade7);
  var topnav_shade8 = $("<div />", { style: "float:left; width:17%; " })
    .append("<a href='javascript:void(0);' data-skin='bg-shade8' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
      + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:#4373af;'></span></div>"
      + "</a>");
  $('#TopNav').append(topnav_shade8);
  var topnav_shade9 = $("<div />", { style: "float:left; width:17%; " })
    .append("<a href='javascript:void(0);' data-skin='bg-shade9' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
      + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:#090794bf'></span></div>"
      + "</a>");
  $('#TopNav').append(topnav_shade9);
  var topnav_shade10 = $("<div />", { style: "float:left; width:17%; " })
  .append("<a href='javascript:void(0);' data-skin='bg-shade10' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
    + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:#4a9282;'></span></div>"
    + "</a>");
$('#TopNav').append(topnav_shade10);
var topnav_shade11 = $("<div />", { style: "float:left; width:17%; " })
.append("<a href='javascript:void(0);' data-skin='bg-shade11' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
  + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:#514492;'></span></div>"
  + "</a>");
$('#TopNav').append(topnav_shade11);
var topnav_shade12 = $("<div />", { style: "float:left; width:17%; " })
.append("<a href='javascript:void(0);' data-skin='bg-shade12' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
  + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:#659feb;'></span></div>"
  + "</a>");
$('#TopNav').append(topnav_shade12);
var topnav_shade13 = $("<div />", { style: "float:left; width:17%; " })
.append("<a href='javascript:void(0);' data-skin='bg-shade13' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
  + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 13px 13px 13px 13px;background:white'></span></div>"
  + "</a>");
$('#TopNav').append(topnav_shade13);
/*********************************************Gradient shades******************************************************/
$("#TopGradient").append("<div id='TopNav2' style='padding-top: 18px;padding-left: 18px;'>"
+"<p class='text-center no-margin' style='font-size: 12px'>Gradient Pallete for Top Navigation</p></div>")
var topnav_grad1 = $("<div  />", { style: "float:left; width:17%; " })
      .append("<a href='javascript:void(0);' data-skin='bg-grad1' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background: linear-gradient(to bottom,#626dd4,#5d3bb4)'></span>"
        + "</a>");
    $('#TopNav2').append(topnav_grad1);
    var topnav_grad2 = $("<div />", { style: "float:left; width:17%; " })
      .append("<a href='javascript:void(0);' data-skin='bg-grad2' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:linear-gradient(to bottom, rgb(253, 149, 131) 0%,rgba(242,67,44,1) 100%);'></span></div>"
        + "</a>");
    $('#TopNav2').append(topnav_grad2);
    var topnav_grad3 = $("<div  />", { style: "float:left; width:17%; " })
      .append("<a href='javascript:void(0);' data-skin='bg-grad3' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:linear-gradient(to bottom,  #007e9e, #00b5ac);'></span></div>"
        + "</a>");
    $('#TopNav2').append(topnav_grad3);
    var topnav_grad4 = $("<div />", { style: "float:left; width:17%; " }, { id: "grad4" })
      .append("<a href='javascript:void(0);' data-skin='bg-grad4 ' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background: linear-gradient(to top, #fbe3f5, #ffdb77);'></span></div>"
        + "</a>");
    $('#TopNav2').append(topnav_grad4);
    var topnav_grad5 = $("<div  />", { style: "float:left; width:17%; " })
      .append("<a href='javascript:void(0);' data-skin='bg-grad5' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:linear-gradient(to top, #ff9b00, #debc9b)'></span>"
        + "</a>");
    $('#TopNav2').append(topnav_grad5);

    var topnav_grad6 = $("<div />", { style: "float:left; width:17%; " })
      .append("<a href='javascript:void(0);' data-skin='bg-grad6' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:linear-gradient(to top, #ff815e, #fe8d6e, #fc9a7e, #faa58e, #f6b19e);'></span></div>"
        + "</a>");
    $('#TopNav2').append(topnav_grad6);

    var topnav_grad7 = $("<div />", { style: "float:left; width:17%; " })
      .append("<a href='javascript:void(0);' data-skin='bg-grad7' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:linear-gradient(to top, #005be9, #0089fd, #00affe, #38d1f7, #9eeef6);'></span></div>"
        + "</a>");
    $('#TopNav2').append(topnav_grad7);
    var topnav_grad8 = $("<div />", { style: "float:left; width:17%; " })
      .append("<a href='javascript:void(0);' data-skin='bg-grad8' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
        + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:linear-gradient(to top, #448eff, #6481ff, #8770ff);'></span></div>"
        + "</a>");
    $('#TopNav2').append(topnav_grad8);
    var topnav_grad9 = $("<div />", { style: "float:left; width:17%; " })
    .append("<a href='javascript:void(0);' data-skin='bg-grad9' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
      + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:linear-gradient(to top, #ae69b0, #e56eb6);'></span></div>"
      + "</a>");
  $('#TopNav2').append(topnav_grad9);
  var topnav_grad10 = $("<div />", { style: "float:left; width:17%; " })
    .append("<a href='javascript:void(0);' data-skin='bg-grad10' style='display: block; box-shadow: 0 0 3px rgba(0,0,0,0.4)' class='clearfix full-opacity-hover'>"
      + "<div><span style='display:block;width: 100%;float: left;height: 20px;border-radius: 12px 12px 12px 12px;background:linear-gradient(to bottom, #5ecfd4, #62bb81);'></span></div>"
      + "</a>");
  $('#TopNav2').append(topnav_grad10);

    //Calling Setup()
    setup();
    function setup() {

      var tmp = get('bg');
      // Getting bg of top Nav-bar and checking in defined array :From local Storage
      if (jQuery.inArray(tmp, my_skins) != '-1') {
        change_skin(tmp);
      }
      //Change instantly top nav color after clicking  and storing
      $("[data-skin]").on('click', function (e) {
        if ($(this).hasClass('knob'))
          return;
        e.preventDefault();
        change_skin($(this).data('skin'));
      });
    }


    function get(name) {
      if (typeof (Storage) !== "undefined") {
        var currentColor = localStorage.getItem(name);
        return (currentColor);
      } else {
        window.alert('Please use a modern browser to properly view this template!');
      }

    }
    function change_skin(cls) {
      $.each(my_skins, function (i) {
        $("#TopNavBar").removeClass(my_skins[i]);
      });
      $("#TopNavBar").addClass(cls);
$("#mySidenavR").removeClass("Rightsidenavclose")
      //Storing Values
      store('bg', cls);
      return false;
    }

    function store(name, val) {
      if (typeof (Storage) !== "undefined") {
        localStorage.setItem('bg', val);
      } else {
        window.alert('Please use a modern browser to properly view this template!');
      }
    }



  }
})(jQuery);
