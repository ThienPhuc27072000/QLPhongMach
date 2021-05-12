<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<div class="preloader">
    <div class="cssload-speeding-wheel"></div>
</div>
<div id="wrapper">
    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Add Account</h4> </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> <a href="" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Buy Now</a>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Hospital</a></li>
                        <li class="active">Add Account</li>
                    </ol>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="white-box">
                        <h3 class="box-title">Basic Information</h3>
                        <form:form modelAttribute="account" method="post" cssClass="form-material form-horizontal">
                            <form:errors path="*" cssClass="alert alert-danger" element="div"/>
                            <div class="form-group">
                                <label class="col-md-12" for="example-text">Username</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="username" cssClass="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="example-text">Password</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="password" cssClass="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="role">Role</span>
                                </label>
                                <div class="col-md-12">
                                    <form:select path="role" cssClass="form-control select">
                                        <c:forEach items="${role}" var="a">
                                            <form:option value="${a.id}">${a.ten}</form:option>
                                        </c:forEach>
                                    </form:select>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Submit</button>
                            <a href="<c:url value="/doctors/" />" class="btn btn-inverse waves-effect waves-light">Cancel</a>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>