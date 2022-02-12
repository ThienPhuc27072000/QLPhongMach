<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">cập nhật toa thuốc </h4>
            </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <a href="/" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Trang chủ</a>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title">Thông tin cơ bản</h3>

                    <form:form cssClass="form-material form-horizontal"  modelAttribute="prescription" method="post">
                        <form:errors path="*" element="div" cssClass="text-danger" />

                        <div class="form-group">
                            <form:select  path="bacSi" cssClass="form-control select">

                                <c:forEach items="${doctors}" var="d">
                                    <form:option value="${d.id}">${d.ho} ${d.ten}</form:option>
                                </c:forEach>
                            </form:select>
                        </div>
                        <div class="form-group">
                            <form:select path="benhNhan" cssClass="form-control select">
                                <c:forEach items="${patients}" var="p">
                                    <form:option value="${p.id}">${p.ho} ${p.ten}</form:option>
                                </c:forEach>
                            </form:select>
                        </div>
                        <div class="form-group">
                            <form:input path="ngayKeToa" cssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <form:select path="loaiBenh" cssClass="form-control select">
                                <c:forEach items="${diseases}" var="benh">
                                    <form:option value="${benh.id}">${benh.tenBenh}</form:option>
                                </c:forEach>
                            </form:select>
                        </div>

                        <form:button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Thêm</form:button>
                        <%--                        <button type="submit" class="btn btn-inverse waves-effect waves-light">Hủy</button>--%>
                    </form:form>

                </div>
            </div>
        </div>

    </div>
</div>

<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o), m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-19175540-9', 'auto');
    ga('send', 'pageview');
</script>

<script type="text/javascript">
    jQuery('.mydatepicker').datepicker();
</script>
<script src="<c:url value="/admin-resources/js/custom.min.js"/>"></script>
<script src="<c:url value="/admin-resources/js/jasny-bootstrap.js"/>"></script>
<script src="<c:url value="/admin-resources/js/mask.js"/>"></script>
<script src="<c:url value="/admin-resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"/>"></script>
