<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<body>
<div class="preloader">
    <div class="cssload-speeding-wheel"></div>
</div>
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Add Medicine</h4></div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <a href="" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">
                    Buy Now
                </a>
                <ol class="breadcrumb">
                    <li><a href="index.html">Hospital</a></li>
                    <li class="active">Add Medicine</li>
                </ol>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title">Basic Information</h3>
                    <form:form modelAttribute="medicine" method="post" cssClass="form-material form-horizontal">
                        <div class="form-group">
                            <label class="col-md-12" for="tenThuoc">Medinine name</span>
                            </label>
                            <div class="col-md-12">
                                <form:input path="tenThuoc" cssClass="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12" for="moTa">Description</span>
                            </label>
                            <div class="col-md-12">
                                <form:input path="moTa" cssClass="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12" for="donGia">Price</span>
                            </label>
                            <div class="col-md-12">
                                <form:input path="donGia" cssClass="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12" for="donVi">Unit</span>
                            </label>
                            <div class="col-md-12">
                                <form:input path="donVi" cssClass="form-control" />
                            </div>
                        </div>
                        <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Submit</button>
                        <button type="submit" class="btn btn-inverse waves-effect waves-light">Cancel</button>
                    </form:form>
                </div>
            </div>
        </div>
<%--        <!-- .right-sidebar -->--%>
<%--        <div class="right-sidebar">--%>
<%--            <div class="slimscrollright">--%>
<%--                <div class="rpanel-title"> Service Panel <span><i class="ti-close right-side-toggle"></i></span></div>--%>
<%--                <div class="r-panel-body">--%>
<%--                    <ul>--%>
<%--                        <li><b>Layout Options</b></li>--%>
<%--                        <li>--%>
<%--                            <div class="checkbox checkbox-info">--%>
<%--                                <input id="checkbox1" type="checkbox" class="fxhdr">--%>
<%--                                <label for="checkbox1"> Fix Header </label>--%>
<%--                            </div>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <div class="checkbox checkbox-warning">--%>
<%--                                <input id="checkbox2" type="checkbox" class="fxsdr">--%>
<%--                                <label for="checkbox2"> Fix Sidebar </label>--%>
<%--                            </div>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <div class="checkbox checkbox-success">--%>
<%--                                <input id="checkbox4" type="checkbox" class="open-close">--%>
<%--                                <label for="checkbox4"> Toggle Sidebar </label>--%>
<%--                            </div>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                    <ul id="themecolors" class="m-t-20">--%>
<%--                        <li><b>With Light sidebar</b></li>--%>
<%--                        <li><a href="javascript:void(0)" data-theme="default" class="default-theme">1</a></li>--%>
<%--                        <li><a href="javascript:void(0)" data-theme="green" class="green-theme">2</a></li>--%>
<%--                        <li><a href="javascript:void(0)" data-theme="gray" class="yellow-theme">3</a></li>--%>
<%--                        <li><a href="javascript:void(0)" data-theme="blue" class="blue-theme">4</a></li>--%>
<%--                        <li><a href="javascript:void(0)" data-theme="purple" class="purple-theme">5</a></li>--%>
<%--                        <li><a href="javascript:void(0)" data-theme="megna" class="megna-theme working">6</a></li>--%>
<%--                        <li class="d-block m-t-30"><b>With Dark sidebar</b></li>--%>
<%--                        <br/>--%>
<%--                        <li><a href="javascript:void(0)" data-theme="default-dark" class="default-dark-theme">7</a></li>--%>
<%--                        <li><a href="javascript:void(0)" data-theme="green-dark" class="green-dark-theme">8</a></li>--%>
<%--                        <li><a href="javascript:void(0)" data-theme="gray-dark" class="yellow-dark-theme">9</a></li>--%>
<%--                        <li><a href="javascript:void(0)" data-theme="blue-dark" class="blue-dark-theme">10</a></li>--%>
<%--                        <li><a href="javascript:void(0)" data-theme="purple-dark" class="purple-dark-theme">11</a></li>--%>
<%--                        <li><a href="javascript:void(0)" data-theme="megna-dark" class="megna-dark-theme">12</a></li>--%>
<%--                    </ul>--%>
<%--                    <ul class="m-t-20 chatonline">--%>
<%--                        <li><b>Chat option</b></li>--%>
<%--                        <li>--%>
<%--                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/varun.jpg"--%>
<%--                                                              alt="user-img" class="img-circle">--%>
<%--                                <span>Varun Dhavan <small class="text-success">online</small></span></a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/genu.jpg"--%>
<%--                                                              alt="user-img" class="img-circle"> <span>Genelia Deshmukh <small--%>
<%--                                    class="text-warning">Away</small></span></a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/ritesh.jpg"--%>
<%--                                                              alt="user-img" class="img-circle">--%>
<%--                                <span>Ritesh Deshmukh <small class="text-danger">Busy</small></span></a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/arijit.jpg"--%>
<%--                                                              alt="user-img" class="img-circle">--%>
<%--                                <span>Arijit Sinh <small class="text-muted">Offline</small></span></a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/govinda.jpg"--%>
<%--                                                              alt="user-img" class="img-circle">--%>
<%--                                <span>Govinda Star <small class="text-success">online</small></span></a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/hritik.jpg"--%>
<%--                                                              alt="user-img" class="img-circle">--%>
<%--                                <span>John Abraham<small class="text-success">online</small></span></a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/john.jpg"--%>
<%--                                                              alt="user-img" class="img-circle">--%>
<%--                                <span>Hritik Roshan<small class="text-success">online</small></span></a>--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/pawandeep.jpg"--%>
<%--                                                              alt="user-img" class="img-circle">--%>
<%--                                <span>Pwandeep rajan <small class="text-success">online</small></span></a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
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
</body>