<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>--%>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">List Doctor</h4> </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> <a href="" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Buy Now</a>
                <ol class="breadcrumb">
                    <li>Hospital</li>
                    <li class="active"><a href="/doctors/add-doctor">Add Doctor</a></li>
                </ol>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- .row -->
        <div class="row el-element-overlay">
            <!-- .usercard -->
            <c:forEach items="${doctors}" var="d">
                <div id="${d.id}" class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div class="white-box">
                        <div class="el-card-item">
                            <div class="el-card-avatar el-overlay-1"> <img src="${d.image}" />
                                <div class="el-overlay">
                                    <ul class="el-info">
                                        <li><a class="btn default btn-outline image-popup-vertical-fit"
                                               href="/resourceAdmin/plugins/images/users/medicine.png"><i class="icon-magnifier"></i></a>
                                        </li>
                                        <li>
                                            <a class="btn default btn-outline" href="/doctors/edit-doctor?id=${d.id}"><i class="icon-link"></i></a>
                                        </li>
                                        <li>
                                            <a class="btn default btn-outline" href="javascript:;" onclick="xoaBS('${d.id}')"><i class="far fa-trash-alt"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="el-card-content">
                                <h3 class="box-title"> ${d.ho} ${d.ten}</h3>
                                <small>Điện thoại: ${d.dienThoai}</small>
                                <br/> <small>Email: ${d.email}</small>
                                <br/> <small>Tài khoản: ${d.taiKhoan.username}</small>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<script>
    function xoaBS(id) {
        if (confirm("Do you want to delete ?")) {
            fetch("/doctors/delete/" + id, {
                method:"POST",
                headers:{
                    "content-type":"application/json"
                }
            }).then(res => {
                if (res.status == 200) {
                    document.getElementById(id).style.display = "none";
                }
                else
                    alert("Something wrong");
            })
        }
    }
</script>
<%--<div id="page-wrapper">--%>
<%--    <div class="container-fluid">--%>
<%--        <div class="row bg-title">--%>
<%--            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">--%>
<%--                <h4 class="page-title">List Doctors</h4></div>--%>
<%--            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">--%>
<%--                <a href="" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Buy--%>
<%--                Now</a>--%>
<%--                <ol class="breadcrumb">--%>
<%--                    <li>Hospital</li>--%>
<%--                    <li class="active"><a href="/doctors/add-doctor">Add Doctor</a></li>--%>
<%--                </ol>--%>
<%--            </div>--%>
<%--            <!-- /.col-lg-12 -->--%>
<%--        </div>--%>
<%--        <!-- .row -->--%>
<%--        <div class="row">--%>
<%--            <c:forEach items="${doctors}" var="d">--%>
<%--                <div class="col-md-4 col-sm-4">--%>
<%--                    <div class="white-box">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-md-4 col-sm-4 text-center">--%>
<%--                                <a href="contact-detail.html">--%>
<%--                                    <img src="/resourceAdmin/plugins/images/users/d1.jpg"--%>
<%--                                                                   alt="user" class="img-circle img-responsive">--%>
<%--                                </a>--%>
<%--                            </div>--%>
<%--                            <div class="col-md-5 col-sm-5">--%>
<%--                                <h3 class="box-title m-b-0">${d.ten}</h3>--%>
<%--                                <small>${d.ho}</small>--%>
<%--                                <address>--%>
<%--                                    ${d.email}<br/>--%>
<%--                                    <abbr title="Phone">Phone: </abbr>${d.dienThoai}--%>
<%--                                </address>--%>
<%--                            </div>--%>
<%--                            <div class="col-md-3 col-sm-3">--%>
<%--                                <a href="<c:url value="/doctors/edit-doctor?id=${d.id}" />" class="btn btn-primary">Cap nhat</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>


