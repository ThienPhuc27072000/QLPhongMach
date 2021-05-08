<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<html>
<head>
    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- Site Metas -->
    <title>Life Care - Responsive HTML5 Multi Page Template</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Site Icons -->
    <link rel="shortcut icon" href="<c:url value= "/resources/images/fevicon.ico.png" />" type="image/x-icon" />
    <link rel="apple-touch-icon" href="<c:url value= "/resources/images/apple-touch-icon.png"/> "/>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:url value = "/resources/css/bootstrap.min.css"/> "/>
    <!-- Site CSS -->
    <link rel="stylesheet" href="<c:url value = "/resources/css/style.css"/> "/>
    <!-- Colors CSS -->
    <link rel="stylesheet" href="<c:url value = "/resources/css/colors.css"/> "/>
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="<c:url value = "/resources/css/versions.css"/> "/>
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="<c:url value = "/resources/css/responsive.css"/> "/>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<c:url value = "/resources/css/custom.css"/> "/>

    <link href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>" rel="stylesheet"/>
    <!-- Modernizer for Portfolio -->
    <script src="<c:url value = "/resources/js/modernizer.js"/>"></script>
    <!-- [if lt IE 9] -->
</head>

<body>
    <div id="wrapper">
        <tiles:insertAttribute name="header"/>
        <tiles:insertAttribute name="content" />
        <tiles:insertAttribute name="footer" />
    </div>
    <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
    <!-- all js files -->
    <script src="<c:url value = "/resources/js/all.js"/>"></script>
    <!-- all plugins -->
    <script src="<c:url value = "/resources/js/custom.js"/>"></script>
    <!-- map -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>
</body>

</html>