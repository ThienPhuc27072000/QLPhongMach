<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="preloader">
    <div class="cssload-speeding-wheel"></div>
</div>
<div id="wrapper">
    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Add Doctor</h4> </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> <a href="" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Buy Now</a>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Hospital</a></li>
                        <li class="active">Add Doctor</li>
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
                                    <form:input path="ngaySinh" cssClass="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-12">Gender</label>
                                <div class="col-sm-12">
                                    <form:select path="gioiTinh" cssClass="form-control">
                                        <option value="">Select Gender</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
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
                                <label class="col-sm-12">Profile Image</label>
                                <div class="col-sm-12">
                                    <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                        <div class="form-control" data-trigger="fileinput">
                                            <i class="glyphicon glyphicon-file fileinput-exists"></i>
                                            <span class="fileinput-filename"></span>
                                        </div>
                                        <span class="input-group-addon btn btn-default btn-file">
                                            <span class="fileinput-new">Select file</span>
                                            <span class="fileinput-exists">Change</span>
                                            <form:input type="file" path="img"/>
                                        </span>
                                        <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12" for="taiKhoan">Account</span>
                                </label>
                                <div class="col-md-12">
                                    <form:select path="taiKhoan" cssClass="form-control select">
                                        <c:forEach items="${account}" var="a">
                                            <form:option value="${a.id}">${a.username}</form:option>
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