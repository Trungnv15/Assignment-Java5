<%@ page pageEncoding="utf-8"%>
<%@ page language="java"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="vn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="keywords" content="Employ Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <!--//meta tags ends here--> 
      <!--booststrap-->
      <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="resources/css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
      <!-- //font-awesome icons -->
      <!-- For Text About slider -->
      <link rel="stylesheet" href="resources/css/flexslider.css" type="text/css" media="all" />
      <!-- //For Text About slider -->
      <!-- For Service pie-chart -->
      <link rel="stylesheet" href="resources/css/morris.css">
      <!--//For Service pie-chart -->
      <!--stylesheets-->
      <link href="resources/css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500" rel="stylesheet">
      <%@ page isELIgnored="false"%>
    <title>Đăng nhập</title>
    <base href="${pageContext.servletContext.contextPath}/">
</head>
<body>
    <body>
    
    <section class="register py-lg-4 py-md-3 py-sm-3 py-3">
        <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
           <div class="row">
              <div class="col-lg-6 jst-must-info">
                 <div class=" wthree-form-list">
                    <h4></h4>
                 </div>
                 <div class="stats-info row pt-lg-4 pt-md-3 pt-sm-3 pt-2">
                    <div class="col-lg-4 col-md-4 col-sm-4 stats-grid stats-grid-1">
                       <div class="register-left-agile">
                          <div class="counter">140</div>
                          <div class="stat-info py-lg-3 py-md-3 py-sm-3 py-3">
                             <h4>Chi nhánh</h4>
                          </div>
                          <span class="fas fa-code-branch"></span>					
                       </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 stats-grid stats-grid-2">
                       <div class="register-left-agile">
                          <div class="counter">4000</div>
                          <div class="stat-info py-lg-3 py-md-3 py-sm-3 py-3">
                             <h4>Nhân viên</h4>
                          </div>
                          <span class="far fa-smile" aria-hidden="true"></span>
                       </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 stats-grid stats-grid-3">
                       <div class="register-left-agile">
                          <div class="counter">500</div>
                          <div class="stat-info py-lg-3 py-md-3 py-sm-3 py-3">
                             <h4>Dự án</h4>
                          </div>
                          <span class="fab fa-angellist" aria-hidden="true"></span>
                       </div>
                    </div>
                 </div>
              </div>
              <div class="col-lg-6 text-center register-form">
                 <div class="wls-register-form">
                    <h4>ĐĂNG NHẬP</h4>
                    
                    <h7 style="color: red;" >${message}</h7>
                    
                    <form method="POST" action="check-login">
                       <div class="form-group fill-all-form">
                          <input type="text" name="Username" class="form-control" placeholder="Username/Email">
                       </div>
                       <div class="form-group fill-all-form">
                          <input type="Password" name="Password" class="form-control" placeholder="Password">
                       </div>
                       <div class="check-point my-lg-4 my-md-3 my-3">
                          <input type="checkbox" class="checked mr-2">
                          <span class="span">Ghi nhớ đăng nhập</span>
                       </div>
                       <button type="submit" class="btn click-me btn-block">Đăng nhập</button>
                       <div class="log-form mt-3">
                          <h4>Nếu quên mật khẩu, hãy <a href="contact.html">Liên hệ</a> phòng nhân sự.
                          </h4>
                       </div>
                    </form>
                 </div>
              </div>
           </div>
        </div>
     </section>
     <footer>
        <p>@2020 Employ. All Rights Reserved</p>
     </footer>

     <script src='resources/js/jquery-2.2.3.min.js'></script>
     <!--//js working-->
     <!--responsiveslides banner-->
     <script src="resources/js/responsiveslides.min.js"></script>
     <script>
        // You can also use "$(window).load(function() {"
        $(function () {
            // Slideshow 4
            $("#slider4").responsiveSlides({
                auto: true,
                pager:true,
                nav: false,
                speed: 900,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });
        
        });
     </script>
     <!--// responsiveslides banner-->	  
     <!--About OnScroll-Number-Increase-JavaScript -->
     <script src="resources/js/jquery.waypoints.min.js"></script>
     <script src="resources/js/jquery.countup.js"></script>
     <script>
        $('.counter').countUp();
     </script>
     <!-- //OnScroll-Number-Increase-JavaScript -->
     <!--FlexSlider-JavaScript -->
     <script defer src="resources/js/jquery.flexslider.js"></script>
     <script>
        $(window).load(function(){
        $('.flexslider').flexslider({
            animation: "slide",
            start: function(slider){
                $('body').removeClass('loading');
            }
        });
        });
     </script>
     <!-- //FlexSlider-JavaScript -->
     <!--About Chart-JavaScript -->
     <script>
        var label = document.querySelector(".label");
        var c = document.getElementById("c");
        var ctx = c.getContext("2d");
        var cw = c.width =500;
        var ch = c.height = 350;
        var cx = cw / 2,
          cy = ch / 2;
        var rad = Math.PI / 180;
        var frames = 0;
        
        ctx.lineWidth = 1;
        ctx.strokeStyle = "#999";
        ctx.fillStyle = "#ccc";
        ctx.font = "14px monospace";
        
        var grd = ctx.createLinearGradient(0, 0, 0, cy);
        grd.addColorStop(0, "hsla(167,72%,60%,1)");
        grd.addColorStop(1, "hsla(167,72%,60%,0)");
        
        var oData = {
          "2008": 10,
          "2009": 39.9,
          "2010": 17,
          "2011": 30.0,
          "2012": 5.3,
          "2013": 38.4,
          "2014": 15.7,
          "2015": 9.0
        };
        
        var valuesRy = [];
        var propsRy = [];
        for (var prop in oData) {
        
          valuesRy.push(oData[prop]);
          propsRy.push(prop);
        }
        
        
        var vData = 4;
        var hData = valuesRy.length;
        var offset = 50.5; //offset chart axis
        var chartHeight = ch - 2 * offset;
        var chartWidth = cw - 2 * offset;
        var t = 1 / 7; // curvature : 0 = no curvature 
        var speed = 2; // for the animation
        
        var A = {
          x: offset,
          y: offset
        }
        var B = {
          x: offset,
          y: offset + chartHeight
        }
        var C = {
          x: offset + chartWidth,
          y: offset + chartHeight
        }
        
        /*
              A  ^
                |  |  
                + 25
                |
                |
                |
                + 25  
              |__|_________________________________  C
              B
        */
        
        // CHART AXIS -------------------------
        ctx.beginPath();
        ctx.moveTo(A.x, A.y);
        ctx.lineTo(B.x, B.y);
        ctx.lineTo(C.x, C.y);
        ctx.stroke();
        
        // vertical ( A - B )
        var aStep = (chartHeight - 50) / (vData);
        
        var Max = Math.ceil(arrayMax(valuesRy) / 10) * 10;
        var Min = Math.floor(arrayMin(valuesRy) / 10) * 10;
        var aStepValue = (Max - Min) / (vData);
        console.log("aStepValue: " + aStepValue); //8 units
        var verticalUnit = aStep / aStepValue;
        
        var a = [];
        ctx.textAlign = "right";
        ctx.textBaseline = "middle";
        for (var i = 0; i <= vData; i++) {
        
          if (i == 0) {
            a[i] = {
              x: A.x,
              y: A.y + 20,
              val: Max
            }
          } else {
            a[i] = {}
            a[i].x = a[i - 1].x;
            a[i].y = a[i - 1].y + aStep;
            a[i].val = a[i - 1].val - aStepValue;
          }
          drawCoords(a[i], 3, 0);
        }
        
        //horizontal ( B - C )
        var b = [];
        ctx.textAlign = "center";
        ctx.textBaseline = "hanging";
        var bStep = chartWidth / (hData + 1);
        
        for (var i = 0; i < hData; i++) {
          if (i == 0) {
            b[i] = {
              x: B.x + bStep,
              y: B.y,
              val: propsRy[0]
            };
          } else {
            b[i] = {}
            b[i].x = b[i - 1].x + bStep;
            b[i].y = b[i - 1].y;
            b[i].val = propsRy[i]
          }
          drawCoords(b[i], 0, 3)
        }
        
        function drawCoords(o, offX, offY) {
          ctx.beginPath();
          ctx.moveTo(o.x - offX, o.y - offY);
          ctx.lineTo(o.x + offX, o.y + offY);
          ctx.stroke();
        
          ctx.fillText(o.val, o.x - 2 * offX, o.y + 2 * offY);
        }
        //----------------------------------------------------------
        
        // DATA
        var oDots = [];
        var oFlat = [];
        var i = 0;
        
        for (var prop in oData) {
          oDots[i] = {}
          oFlat[i] = {}
        
          oDots[i].x = b[i].x;
          oFlat[i].x = b[i].x;
        
          oDots[i].y = b[i].y - oData[prop] * verticalUnit - 20;
          oFlat[i].y = b[i].y - 25;
        
          oDots[i].val = oData[b[i].val];
          
          i++
        }
        ///// Animation Chart ///////////////////////////
        //var speed = 3;
        function animateChart() {
          requestId = window.requestAnimationFrame(animateChart);
          frames += speed; //console.log(frames)
          ctx.clearRect(60, 0, cw, ch - 60);
          
          for (var i = 0; i < oFlat.length; i++) {
            if (oFlat[i].y > oDots[i].y) {
              oFlat[i].y -= speed;
            }
          }
          drawCurve(oFlat);
          for (var i = 0; i < oFlat.length; i++) {
              ctx.fillText(oDots[i].val, oFlat[i].x, oFlat[i].y - 25);
              ctx.beginPath();
              ctx.arc(oFlat[i].x, oFlat[i].y, 3, 0, 2 * Math.PI);
              ctx.fill();
            }
        
          if (frames >= Max * verticalUnit) {
            window.cancelAnimationFrame(requestId);
            
          }
        }
        requestId = window.requestAnimationFrame(animateChart);
        
        /////// EVENTS //////////////////////
        c.addEventListener("mousemove", function(e) {
          label.innerHTML = "";
          label.style.display = "none";
          this.style.cursor = "default";
        
          var m = oMousePos(this, e);
          for (var i = 0; i < oDots.length; i++) {
        
            output(m, i);
          }
        
        }, false);
        
        function output(m, i) {
          ctx.beginPath();
          ctx.arc(oDots[i].x, oDots[i].y, 20, 0, 2 * Math.PI);
          if (ctx.isPointInPath(m.x, m.y)) {
            //console.log(i);
            label.style.display = "block";
            label.style.top = (m.y + 10) + "px";
            label.style.left = (m.x + 10) + "px";
            label.innerHTML = "<strong>" + propsRy[i] + "</strong>: " + valuesRy[i] + "%";
            c.style.cursor = "pointer";
          }
        }
        
        // CURVATURE
        function controlPoints(p) {
          // given the points array p calculate the control points
          var pc = [];
          for (var i = 1; i < p.length - 1; i++) {
            var dx = p[i - 1].x - p[i + 1].x; // difference x
            var dy = p[i - 1].y - p[i + 1].y; // difference y
            // the first control point
            var x1 = p[i].x - dx * t;
            var y1 = p[i].y - dy * t;
            var o1 = {
              x: x1,
              y: y1
            };
        
            // the second control point
            var x2 = p[i].x + dx * t;
            var y2 = p[i].y + dy * t;
            var o2 = {
              x: x2,
              y: y2
            };
        
            // building the control points array
            pc[i] = [];
            pc[i].push(o1);
            pc[i].push(o2);
          }
          return pc;
        }
        
        function drawCurve(p) {
        
          var pc = controlPoints(p); // the control points array
        
          ctx.beginPath();
          //ctx.moveTo(p[0].x, B.y- 25);
          ctx.lineTo(p[0].x, p[0].y);
          // the first & the last curve are quadratic Bezier
          // because I'm using push(), pc[i][1] comes before pc[i][0]
          ctx.quadraticCurveTo(pc[1][1].x, pc[1][1].y, p[1].x, p[1].y);
        
          if (p.length > 2) {
            // central curves are cubic Bezier
            for (var i = 1; i < p.length - 2; i++) {
              ctx.bezierCurveTo(pc[i][0].x, pc[i][0].y, pc[i + 1][1].x, pc[i + 1][1].y, p[i + 1].x, p[i + 1].y);
            }
            // the first & the last curve are quadratic Bezier
            var n = p.length - 1;
            ctx.quadraticCurveTo(pc[n - 1][0].x, pc[n - 1][0].y, p[n].x, p[n].y);
          }
        
          //ctx.lineTo(p[p.length-1].x, B.y- 25);
          ctx.stroke();
          ctx.save();
          ctx.fillStyle = grd;
          ctx.fill();
          ctx.restore();
        }
        
        function arrayMax(array) {
          return Math.max.apply(Math, array);
        };
        
        function arrayMin(array) {
          return Math.min.apply(Math, array);
        };
        
        function oMousePos(canvas, evt) {
          var ClientRect = canvas.getBoundingClientRect();
          return { //objeto
            x: Math.round(evt.clientX - ClientRect.left),
            y: Math.round(evt.clientY - ClientRect.top)
          }
        }
     </script>
     <!-- //Chart-JavaScript -->
     <!--service pie-charts -->
     <script src="resources/js/raphael-min.js"></script>
     <script src="resources/js/morris.js"></script>
     <script>
        Morris.Donut({
          element: 'graph4',
          data: [
          {value: 20, label: 'Team', formatted: 'at least 20%' },
            {value: 50, label: 'Start Up', formatted: 'at least 50%' },
            {value: 10, label: 'Business', formatted: 'approx. 10%' },
            {value: 10, label: 'Plan', formatted: 'approx. 10%' },
            {value: 10, label: 'A really really long label', formatted: 'Sucess 10%' }
          ],
          formatter: function (x, data) { return data.formatted; }
        });
     </script>
     <!-- //charts -->
     <!-- //pie-Chart-JavaScript -->
     <!-- start-smoth-scrolling -->
     <script src="resources/js/move-top.js"></script>
     <script src="resources/js/easing.js"></script>
     <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });
     </script>
     <!-- start-smoth-scrolling -->
     <!-- here stars scrolling icon -->
     <script>
        $(document).ready(function () {
        
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear'
            };
        
        
            $().UItoTop({
                easingType: 'easeOutQuart'
            });
        
        });
     </script>
     <!-- //here ends scrolling icon -->
     <!--bootstrap working-->
     <script src="resources/js/bootstrap.min.js"></script>
     <!-- //bootstrap working-->

</body>
</html>