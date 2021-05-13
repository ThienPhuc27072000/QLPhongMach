<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<div class="preloader">
    <div class="cssload-speeding-wheel"></div>
</div>
    <!-- Page Content -->
    <div id="page-wrapper">
<%--        <div class="container-fluitrongd">--%>
        <div class="container-fluid" />
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">List Patients</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> <a href="" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">
                    Buy Now
                </a>
                    <ol class="breadcrumb">
                        <li>Hospital</li>
                        <li class="active"><a href="/patients/add-patient">Add Patient</a></li>
                    </ol>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- .row -->
            <div class="row el-element-overlay">
                <!-- .usercard -->
                <c:forEach items="${patients}" var="d">
                    <div id="${d.id}" class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="white-box">
                            <div class="el-card-item">
                                <div class="el-card-avatar el-overlay-1"> <img src="/resourceAdmin/plugins/images/users/6.jpg" />
                                    <div class="el-overlay">
                                        <ul class="el-info">
                                            <li><a class="btn default btn-outline image-popup-vertical-fit"
                                                   href="/resourceAdmin/plugins/images/users/1.jpg"><i class="icon-magnifier"></i></a>
                                            </li>
                                            <li>
                                                <a class="btn default btn-outline" href="/patients/edit-patient?id=${d.id}"><i class="icon-link"></i></a>
                                            </li>
                                            <li>
                                                <a class="btn default btn-outline" href="javascript:;" onclick="xoaBN('${d.id}')"><i class="far fa-trash-alt"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="el-card-content">
                                    <h3 class="box-title">${d.ten} ${d.ho}</h3>
                                    <small>${d.gioiTinh}</small><br/>
                                    <small>${d.ngaySinh}</small><br/>
                                    <small>Phone: ${d.dienThoai}</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>

<script>
    function xoaBN(id) {
        if (confirm("Do you want to delete?")) {
            fetch("/patients/delete/" + id, {
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
