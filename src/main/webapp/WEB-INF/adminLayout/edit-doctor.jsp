<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="preloader">
    <div class="cssload-speeding-wheel"></div>
</div>
<div id="wrapper">
    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Edit Doctor</h4> </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> <a href="" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Buy Now</a>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Hospital</a></li>
                        <li class="active">Edit Doctor</li>
                    </ol>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="white-box">
                        <h3 class="box-title">Basic Information</h3>
                        <form:form modelAttribute="doctor" method="post" cssClass="form-material form-horizontal">
                            <form:errors path="*" cssClass="alert alert-danger" element="div"/>
                            <div class="form-group">
                                <label class="col-md-12" for="example-text">Name</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="ten" cssClass="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="example-text">Last Name</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="ho" cssClass="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="bdate">Date of Birth</span>
                                </label>
                                <div class="col-md-12">
                                    <c:set var="date">
                                        <fmt:formatDate value="${doctor.ngaySinh}" pattern="dd/MM/yyyy" />
                                    </c:set>
                                    <form:input path="ngaySinh" cssClass="form-control" value="${date}" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-12">Gender</label>
                                <div class="col-sm-12">
                                    <form:select path="gioiTinh" cssClass="form-control">
                                        <form:option value="">Select Gender</form:option>
                                        <form:option value="Male">Male</form:option>
                                        <form:option value="Female">Female</form:option>
                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="example-text">Hometown</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="queQuan" cssClass="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="example-text">Phone</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="dienThoai" cssClass="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="example-text">Email</span>
                                </label>
                                <div class="col-md-12">
                                    <form:input path="email" cssClass="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="example-text">Account</span>
                                </label>
                                <div class="col-md-12">
                                    <form:select path="taiKhoan" cssClass="form-control select">
                                        <c:forEach items="${account}" var="a">
                                            <c:if test="${a.id.equals(doctor.id)}">
                                                <form:option value="${a.id}" selected="true">${a.username}</form:option>
                                            </c:if>
                                            <c:if test="${!a.id.equals(doctor.id)}">
                                                <form:option value="${a.id}">${a.username}</form:option>
                                            </c:if>
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