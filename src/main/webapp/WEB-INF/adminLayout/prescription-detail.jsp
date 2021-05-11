<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<div id="page-wrapper">
    <div class="container-fluid">
        <h4 class="text-center text-primary">Thong tin toa thuoc</h4>
        <table class="table table-bordered">
            <thead>
            <th>
            ID
            </th>
            <th>Bac si

            <th>Benh nhan
            </th>
            <th>Ngay ke toa
            </th>
            <th>Loai benh
            </th>
            </thead>
            <tbody>
            <tr>
                <td>${prescription.id}</td>
                <td>${prescription.bacSi.ten}</td>
                <td>${prescription.benhNhan.ten}</td>
                <td>${prescription.ngayKeToa}</td>
                <td>${prescription.loaiBenh.tenBenh}</td>
            </tr>
            </tbody>
        </table>
        <a href="javascript:;" class="btn btn-primary" onclick="showForm()">Them CTTH</a>
        <form:form id="medicine-form" cssStyle="display: none; margin-top: 50px" method="post" modelAttribute="detail">
            <form:hidden path="toaThuoc" value="${prescription.id}" />
            <form:errors path="*" element="div" cssClass="alert alert-danger"/>
            <div class="form-group">
                <label for="tenThuoc">Thuoc</label>
                <form:select cssClass="form-control select" path="thuoc">
                    <c:forEach items="${medicines}" var="m">
                        <form:option value="${m.id}">${m.tenThuoc}</form:option>
                    </c:forEach>
                </form:select>
            </div>
            <div class="form-group">
                <label for="soLuong">So luong</label>
                <form:input type="number" path="soLuong" class="form-control"/>
            </div>
            <input type="submit" value="Submit" class="btn btn-success">
        </form:form>

        <c:if test="${result != null}">
            <table style="margin-top: 50px" class="table table-bordered">
                <thead>
                <th>Ten thuoc</th>
                <th>So luong</th>
                </thead>
                <tbody>
                    <c:forEach items="${result}" var="i">
                        <tr>
                            <td>${i.thuoc.tenThuoc}</td>
                            <td>${i.soLuong}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
        
    </div>
</div>

<script>
    function showForm() {
        let e = document.getElementById("medicine-form");
        e.style.display = 'block';
    }
</script>



