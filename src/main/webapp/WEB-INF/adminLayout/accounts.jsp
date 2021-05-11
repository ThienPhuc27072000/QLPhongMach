<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">List Account</h4> </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> <a href="" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Buy Now</a>
                <ol class="breadcrumb">
                    <li><a href="#">Hospital</a></li>
                    <li class="active"><a href="/accounts/add-account"> Add account</a></li>
                </ol>
            </div>
        </div>
        <div class="row bg-title form-group ">
            <table class="table table-bordered table-striped table-hover">
                <thead class="thead-dark">
                <tr>Doctor</tr>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Account</th>
                    <th scope="col">User account</th>
                    <th scope="col">Role</th>
                    <th scope="col">Active</th>
<%--                    <th scope="col">Password</th>--%>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${account}" var="d">
                    <tr>
                        <td>${d.id}</td>
                        <td>${d.username}</td>
                        <td>${d.bacSi.ten} ${d.nhanVien.ten}</td>
                        <td>${d.role.ten}</td>
                        <td>${d.active}</td>
<%--                        <td>${d.password}</td>--%>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

<script>
    function xoaBN(id) {
        if (confirm("Ban co muon xoa khong?")) {
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
</div>