<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %><

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title" style="padding-top: 0px">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">List Prescription</h4>
            </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <a href="" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">
                    Buy Now
                </a>
                <ol class="breadcrumb">
                    <li>Hospital</li>
                    <li class="active"><a href="/prescriptions/add-prescription">Add Prescription</a></li>
                </ol>
            </div>
        </div>
        <!-- .row -->
        <div class="row bg-title form-group ">
            <table class="table table-bordered table-striped table-hover">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Doctor</th>
                    <th scope="col">Patient</th>
                    <th scope="col">Prescription date</th>
                    <th scope="col">Disease</th>
<%--                    <th class="text-right">Hành vi</th>--%>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${prescription}" var="e">
                    <tr id="${e.id}">
                        <td><a href="<c:url value="/prescriptions/details-prescription?id=${e.id}" />">${e.id}</a></td>
                        <td>${e.bacSi.ten}</td>
                        <td>${e.benhNhan.ten}</td>
                        <td>${e.ngayKeToa}</td>
                        <td>${e.loaiBenh.tenBenh}</td>
<%--                        <td>--%>
<%--                            <a class="btn btn-info" style="padding-left: 5%" href="#"><i class="far fa-edit"></i></a>--%>
<%--                            <a class="btn btn-primary" style="padding-left: 5%" href="#"><i class="far fa-edit"></i></a>--%>
<%--                            <a class="btn btn-danger"  style="padding-left: 5%" href="javascript:;" onclick="xoaToaThuoc('${e.id}')" ><i class="far fa-trash-alt"></i></a>--%>
<%--                        </td>--%>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script>
    function xoaPrescription(id) {
        if (confirm("Do you want to delete ?")) {
            fetch("/prescriptions/delete/" + id, {
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