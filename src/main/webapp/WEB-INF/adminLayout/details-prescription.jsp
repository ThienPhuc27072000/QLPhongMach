<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %><

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title" style="padding-top: 0px">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Details of Prescription</h4>
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
            <!-- /.col-lg-12 -->
            <%--<form action="/prescription/search">--%>
            <%--    <label btn-lg>Tìm kiếm</label>--%>
            <%--    <input id="hotenBN" name="BN" type="text"--%>
            <%--           class="form-control"placeholder="Nhập họ tên Bệnh nhân">--%>
            <%--    <br/>--%>
            <%--        <input class="form-control btn btn-info text-light " type="submit" value="tìm">--%>
            <%--</form>--%>
        </div>
        <!-- .row -->
        <div class="row bg-title form-group ">
            <table class="table table-bordered table-striped table-hover">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Bác sĩ</th>
                    <th scope="col">Bệnh nhân</th>
                    <th scope="col">Ngày kê toa</th>
                    <th scope="col">Loại Bệnh</th>
                    <th class="text-right">Hành vi</th>
                </tr>
                </thead>
                <tbody>
                    <tr id="${prescription.id}">
                        <td><a href="<c:url value="#" />">${prescription.id}</a></td>
                        <td>
                                <%--<img width="28" height="28" src="<c:url value="${e.bacSi.image}" />"  alt="">--%>
                                ${prescription.bacSi.ten}
                        </td>
                        <td>${prescription.benhNhan.ten}</td>
                        <td>${prescription.ngayKeToa}</td>
                        <td>${prescription.loaiBenh.tenBenh}</td>
                        <td>
                            <a class="btn btn-info" style="padding-left: 5%" href="#"><i class="far fa-edit"></i></a>
                            <a class="btn btn-primary" style="padding-left: 5%" href="#"><i class="far fa-edit"></i></a>
                                <%--<a class="btn btn-danger"  style="padding-left: 5%" href="javascript:;" onclick="xoaToaThuoc('${e.id}')" ><i class="far fa-trash-alt"></i></a>--%>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <a href="#" onclick="showForm()" class="btn btn-primary">Thêm thuốc vào toa thuốc</a>
                <form:form id="form-details" modelAttribute="details" action="" method="post" style="display: none; margin-top:20px">
                    <form:errors path="*" element="div" cssClass="alert alert-danger" />
                    <input type="hidden" name="toaThuoc" value="${prescription.id}" />
                    <div class="form-group">
                        <label for="">Thuốc:</label>
                        <select class="form-control" name="thuoc" id="thuoc">
                            <c:forEach items="${medicines}" var="m">
                                <option value="${m.id}">${m.tenThuoc}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Số lượng:</label>
                        <input class="form-control" type="number" name="soLuong" id="soLuong" min="1" />
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Thêm"/>
                    </div>
                </form:form>
            </div>
        </div>
        <c:if test="${prescription.dsChiTietToaThuoc != null}">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th>Tên thuốc</th>
                            <th>Số lượng</th>
                        </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${prescription.dsChiTietToaThuoc}" var="e">
                                <tr>
                                    <td>${e.thuoc.tenThuoc}</td>
                                    <td>${e.soLuong}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </c:if>
    </div>
</div>

<script>
    function xoaPrescription(id) {
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

    function showForm() {
        $('#form-details').fadeToggle();
    }
</script>