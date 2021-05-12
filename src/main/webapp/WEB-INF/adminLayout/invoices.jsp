<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="preloader">
    <div class="cssload-speeding-wheel"></div>
</div>
<div id="wrapper">
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title" style="padding-top: 10px">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">List Invoice</h4>
                </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <a href="" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">
                        Buy Now
                    </a>
                    <ol class="breadcrumb">
                        <li>Hospital</li>
                        <li class="active"><a href="/prescriptions/add-prescription">Add Invoice</a></li>
                    </ol>
                </div>
            </div>
            <!-- .row -->
            <div class="row bg-title form-group ">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <td>ID Invoice</td>
                        <td>Employee</td>
                        <td>Patient</td>
                        <td>Date</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${invoices}" var="i">
                        <tr>
                            <td>${i.id}</td>
                            <td>${i.nhanVien.ten}</td>
                            <td>${i.toaThuoc.benhNhan.ten}</td>
                            <td>${i.ngayXuat}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>