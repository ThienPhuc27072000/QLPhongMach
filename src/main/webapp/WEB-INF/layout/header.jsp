<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<div id="preloader">
    <img class="preloader" src="<c:url value = "/images/loaders/heart-loading2.gif"/>" alt="">
</div>
<div class="header-top wow fadeIn">
    <div class="container">
        <a class="navbar-brand" href="index.html">
            <img src="<c:url value = "/images/logo.png" />" alt="image">
        </a>
        <div class="right-header">
            <div class="header-info" style="margin-top: 8px">
                <c:choose>
                    <c:when test="${pageContext.request.userPrincipal.name == null}">
                        <p class="bold text-right" style="">
                            <a style="" href="/taikhoan/login">
                                <i class="fas fa-sign-in-alt"></i>
                                <b>Đăng nhập</b>
                            </a>
                        </p>
                    </c:when>
                    <c:when test="${pageContext.request.userPrincipal.name != null}">
                        <div class="info-inner">
                            <a>
                                <span class="icontop">
                                    <i class="far fa-user" aria-hidden="true" style="margin-top: 4px"></i>
                                </span>
                                <span class="iconcont">${pageContext.request.userPrincipal.name}</span>
                            </a>
                        </div>
                        <div class="info-inner">
                            <a data-scroll href="/admin/">
                                <span class="icontop">
                                    <i class="fas fa-tasks" aria-hidden="true" style="margin-top: 4px"></i>
                                </span>
                                <span class="iconcont">Quản lí phòng mạch</span>
                            </a>
                        </div>
                        <div class="info-inner">
                            <a data-scroll href="/logout">
                                <span class="icontop">
                                    <i class="fas fa-sign-out-alt" aria-hidden="true" style="margin-top: 4px"></i>
                                </span>
                                <span class="iconcont">Đăng xuất</span>
                            </a>
                        </div>
                    </c:when>
                </c:choose>
            </div>
        </div>
    </div>
</div>
<div class="header-bottom wow fadeIn">
    <div class="container">
        <nav class="main-menu">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars" aria-hidden="true"></i></button>
            </div>

            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a class="active" href="#index.html">Home</a></li>
                    <li><a data-scroll href="#about">About us</a></li>
                    <li><a data-scroll href="#service">Services</a></li>
                    <li><a data-scroll href="#doctors">Doctors</a></li>
                    <li><a data-scroll href="#price">Price</a></li>
                    <li><a data-scroll href="#testimonials">Testimonials</a></li>
                    <li><a data-scroll href="#getintouch">Contact</a></li>
                </ul>
            </div>
        </nav>
        <div class="serch-bar">
            <div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-lg" placeholder="Search" />
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button">
                        <i class="fa fa-search" aria-hidden="true"></i>
                        </button>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>

<%--                <div class="info-inner">--%>
<%--                    <b>${pageContext.request.userPrincipal.name}</b>--%>
<%--                    <b><a href="/logout">Đăng xuất</a></b>--%>
<%--                </div>--%>

<%--                <div class="info-inner">--%>
<%--                    <span class="icontop"><img src="<c:url value = "/images/phone-icon.png" />" alt="#"></span>--%>
<%--                    <span class="iconcont"><a href="tel:800 123 456">800 123 456</a></span>--%>
<%--                </div>--%>
<%--                <div class="info-inner">--%>
<%--                    <span class="icontop"><i class="fa fa-envelope" aria-hidden="true"></i></span>--%>
<%--                    <span class="iconcont"><a data-scroll href="mailto:info@yoursite.com">info@Lifecare.com</a></span>--%>
<%--                </div>--%>
<%--                <div class="info-inner">--%>
<%--                    <span class="icontop"><i class="fa fa-clock-o" aria-hidden="true"></i></span>--%>
<%--                    <span class="iconcont"><a data-scroll href="#">Daily: 7:00am - 8:00pm</a></span>--%>
<%--                </div>--%>

<%--                        <p class="bold text-right" style="">--%>
<%--                            <i class="far fa-user"></i>--%>
<%--                            <span style="">${pageContext.request.userPrincipal.name}</span>--%>
<%--                        </p>--%>
<%--                        <div class="sub-content">--%>
<%--                            <ul>--%>
<%--                                <a href="#">--%>
<%--                                    <i class="fa fa-user"></i>--%>
<%--                                    <span style="">Xem thông tin</span>--%>
<%--                                </a>--%>
<%--                                <sec:authorize access="hasAnyRole('ROLE_ADMIN')">--%>
<%--                                    <a href="/admin" target="_blank">--%>
<%--                                        <li>--%>
<%--                                            <i class="fas fa-tasks"></i>--%>
<%--                                            <span>Quản lí phòng mạch</span>--%>
<%--                                        </li>--%>
<%--                                    </a>--%>
<%--                                </sec:authorize>--%>
<%--                                <a href="/logout">--%>
<%--                                    <li><i class="fas fa-sign-out-alt"></i></li>--%>
<%--                                    <span style="">Đăng xuất</span>--%>
<%--                                </a>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
