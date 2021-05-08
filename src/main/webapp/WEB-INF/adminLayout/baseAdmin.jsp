<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Elite Hospital Admin Template - Hospital admin dashboard web app kit</title>
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value= "/resourceAdmin/plugins/images/favicon.png"/>"/>
    <link href="<c:url value="/resourceAdmin/plugins/images/logo.png"/>" rel="icon" type="image/png" sizes="16x16">
    <link href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/resourceAdmin/bootstrap/dist/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resourceAdmin/plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css"/>" rel="stylesheet">
    <link href="<c:url value="/resourceAdmin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resourceAdmin/plugins/bower_components/morrisjs/morris.css"/>" rel="stylesheet">
    <link href="<c:url value="/resourceAdmin/css/animate.css"/>" rel="stylesheet">
    <link href="<c:url value="/resourceAdmin/css/style.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resourceAdmin/css/colors/megna.css"/>" id="theme" rel="stylesheet">
<%--    <link href="<c:url value="/resourceAdmin/css/style.css"/>" rel="stylesheet">--%>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o), m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-19175540-9', 'auto');
        ga('send', 'pageview');
    </script>
    <script>
        $(document).ready(function () {
            $('.textarea_editor').wysihtml5();
        });
    </script>
    <link href="<c:url value= "/resourceAdmin/plugins/bower_components/Magnific-Popup-master/dist/magnific-popup.css"/>" rel="stylesheet">
    <link href="<c:url value= "/resourceAdmin/css/colors/green.css"/>" id="" rel="stylesheet">
    <link href="<c:url value= "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>" rel="stylesheet">


</head>

<body>
    <div id="wrapper">
        <tiles:insertAttribute name="header"/>
        <tiles:insertAttribute name="menu" />
        <tiles:insertAttribute name="content" />
        <tiles:insertAttribute name="footer" />
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous">
    </script>
    <script src="<c:url value= "/resourceAdmin/plugins/bower_components/Magnific-Popup-master/dist/jquery.magnific-popup.min.js"/>"></script>
    <script src="<c:url value= "/resourceAdmin/plugins/bower_components/Magnific-Popup-master/dist/jquery.magnific-popup-init.js"/>"></script>
    <script src="<c:url value="/resourceAdmin/plugins/bower_components/jquery/dist/jquery.min.js"/>"></script>
    <script src="<c:url value="/resourceAdmin/bootstrap/dist/js/tether.min.js"/>"></script>
    <script src="<c:url value="/resourceAdmin/bootstrap/dist/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resourceAdmin/plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"/>"></script>
    <script src="<c:url value="/resourceAdmin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"/>"></script>
    <script src="<c:url value="/resourceAdmin/js/jquery.slimscroll.js"/>"></script>
    <script src="<c:url value="/resourceAdmin/js/waves.js"/>"></script>
    <script src="<c:url value="/resourceAdmin/js/custom.min.js"/>"></script>
    <script src="<c:url value="/resourceAdmin/plugins/bower_components/calendar/jquery-ui.min.js"/>"></script>
    <script src="<c:url value="/resourceAdmin/plugins/bower_components/moment/moment.js"/>"></script>
    <script src="<c:url value="/resourceAdmin/plugins/bower_components/calendar/dist/fullcalendar.min.js"/>"></script>
    <script src="<c:url value="/resourceAdmin/plugins/bower_components/calendar/dist/jquery.fullcalendar.js"/>"></script>
    <script src="<c:url value="/resourceAdmin/plugins/bower_components/calendar/dist/cal-init.js"/>"></script>
    <script src="<c:url value="/resourceAdmin/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
    <script type="text/javascript">
        // Date Picker
        jQuery('.mydatepicker').datepicker();
    </script>
    <!-- Custom Theme JavaScript -->
    <script src="<c:url value="/resourceAdmin/js/jasny-bootstrap.js"/>"></script>
    <script src="<c:url value="/resourceAdmin/js/mask.js"/>"></script>
</body>