<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">Hospital Dashboard</h4> </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> <a href="" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Buy Now</a>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Hospital</a></li>
                    <li class="active">Dashboard</li>
                </ol>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!--row -->
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="white-box">
                    <div class="r-icon-stats"> <i class="ti-user bg-megna"></i>
                        <div class="bodystate">
                            <h4>370</h4> <span class="text-muted">New Patient</span> </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="white-box">
                    <div class="r-icon-stats"> <i class="ti-shopping-cart bg-info"></i>
                        <div class="bodystate">
                            <h4>342</h4> <span class="text-muted">OPD Patient</span> </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="white-box">
                    <div class="r-icon-stats"> <i class="ti-wallet bg-success"></i>
                        <div class="bodystate">
                            <h4>13</h4> <span class="text-muted">Today's Ops.</span> </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="white-box">
                    <div class="r-icon-stats"> <i class="ti-wallet bg-inverse"></i>
                        <div class="bodystate">
                            <h4>$34650</h4> <span class="text-muted">Revenue</span> </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/row -->
        <!-- .row -->
        <div class="row">
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="white-box">
                    <h3 class="box-title"><small class="pull-right m-t-10 text-success"><i class="fa fa-sort-asc"></i> 18% High then last month</small> New Patient</h3>
                    <div class="stats-row">
                        <div class="stat-item">
                            <h6>Overall</h6> <b>80.40%</b></div>
                        <div class="stat-item">
                            <h6>Montly</h6> <b>15.40%</b></div>
                        <div class="stat-item">
                            <h6>Day</h6> <b>5.50%</b></div>
                    </div>
                    <div id="sparkline8" class="minus-mar"></div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="white-box">
                    <h3 class="box-title"><small class="pull-right m-t-10 text-danger"><i class="fa fa-sort-desc"></i> 18% less then last month</small>OPD Patients</h3>
                    <div class="stats-row">
                        <div class="stat-item">
                            <h6>Overall</h6> <b>80.40%</b></div>
                        <div class="stat-item">
                            <h6>Montly</h6> <b>15.40%</b></div>
                        <div class="stat-item">
                            <h6>Day</h6> <b>5.50%</b></div>
                    </div>
                    <div id="sparkline9" class="minus-mar"></div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="white-box">
                    <h3 class="box-title"><small class="pull-right m-t-10 text-success"><i class="fa fa-sort-asc"></i> 18% High then last month</small>Treatment</h3>
                    <div class="stats-row">
                        <div class="stat-item">
                            <h6>Overall Growth</h6> <b>80.40%</b></div>
                        <div class="stat-item">
                            <h6>Montly</h6> <b>15.40%</b></div>
                        <div class="stat-item">
                            <h6>Day</h6> <b>5.50%</b></div>
                    </div>
                    <div id="sparkline10" class="minus-mar"></div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!--row -->
<%--        <div class="row">--%>
<%--            <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">--%>
<%--                <div class="white-box">--%>
<%--                    <h3 class="box-title">Patients In</h3>--%>
<%--                    <ul class="list-inline text-center">--%>
<%--                        <li>--%>
<%--                            <h5><i class="fa fa-circle m-r-5" style="color: #00bfc7;"></i>OPD</h5> </li>--%>
<%--                        <li>--%>
<%--                            <h5><i class="fa fa-circle m-r-5" style="color: #b4becb;"></i>ICU</h5> </li>--%>
<%--                    </ul>--%>
<%--                    <div id="morris-area-chart1" style="height: 370px;"></div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">--%>
<%--                <div class="white-box">--%>
<%--                    <h3 class="box-title">Hospital Earning</h3>--%>
<%--                    <ul class="list-inline text-center">--%>
<%--                        <li>--%>
<%--                            <h5><i class="fa fa-circle m-r-5" style="color: #00bfc7;"></i>OPD</h5> </li>--%>
<%--                        <li>--%>
<%--                            <h5><i class="fa fa-circle m-r-5" style="color: #b4becb;"></i>ICU</h5> </li>--%>
<%--                    </ul>--%>
<%--                    <div id="morris-area-chart2" style="height: 370px;"></div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
        <!-- .right-sidebar -->
        <div class="right-sidebar">
            <div class="slimscrollright">
                <div class="rpanel-title"> Service Panel <span><i class="ti-close right-side-toggle"></i></span> </div>
                <div class="r-panel-body">
                    <ul>
                        <li><b>Layout Options</b></li>
                        <li>
                            <div class="checkbox checkbox-info">
                                <input id="checkbox1" type="checkbox" class="fxhdr">
                                <label for="checkbox1"> Fix Header </label>
                            </div>
                        </li>
                        <li>
                            <div class="checkbox checkbox-warning">
                                <input id="checkbox2" type="checkbox" class="fxsdr">
                                <label for="checkbox2"> Fix Sidebar </label>
                            </div>
                        </li>
                        <li>
                            <div class="checkbox checkbox-success">
                                <input id="checkbox4" type="checkbox" class="open-close">
                                <label for="checkbox4"> Toggle Sidebar </label>
                            </div>
                        </li>
                    </ul>
                    <ul id="themecolors" class="m-t-20">
                        <li><b>With Light sidebar</b></li>
                        <li><a href="javascript:void(0)" data-theme="default" class="default-theme">1</a></li>
                        <li><a href="javascript:void(0)" data-theme="green" class="green-theme">2</a></li>
                        <li><a href="javascript:void(0)" data-theme="gray" class="yellow-theme">3</a></li>
                        <li><a href="javascript:void(0)" data-theme="blue" class="blue-theme">4</a></li>
                        <li><a href="javascript:void(0)" data-theme="purple" class="purple-theme">5</a></li>
                        <li><a href="javascript:void(0)" data-theme="megna" class="megna-theme working">6</a></li>
                        <li class="d-block m-t-30"><b>With Dark sidebar</b></li>
                        <li><a href="javascript:void(0)" data-theme="default-dark" class="default-dark-theme">7</a></li>
                        <li><a href="javascript:void(0)" data-theme="green-dark" class="green-dark-theme">8</a></li>
                        <li><a href="javascript:void(0)" data-theme="gray-dark" class="yellow-dark-theme">9</a></li>
                        <li><a href="javascript:void(0)" data-theme="blue-dark" class="blue-dark-theme">10</a></li>
                        <li><a href="javascript:void(0)" data-theme="purple-dark" class="purple-dark-theme">11</a></li>
                        <li><a href="javascript:void(0)" data-theme="megna-dark" class="megna-dark-theme">12</a></li>
                    </ul>
                    <ul class="m-t-20 chatonline">
                        <li><b>Chat option</b></li>
                        <li>
                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/varun.jpg" alt="user-img" class="img-circle"> <span>Varun Dhavan <small class="text-success">online</small></span></a>
                        </li>
                        <li>
                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/genu.jpg" alt="user-img" class="img-circle"> <span>Genelia Deshmukh <small class="text-warning">Away</small></span></a>
                        </li>
                        <li>
                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/ritesh.jpg" alt="user-img" class="img-circle"> <span>Ritesh Deshmukh <small class="text-danger">Busy</small></span></a>
                        </li>
                        <li>
                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/arijit.jpg" alt="user-img" class="img-circle"> <span>Arijit Sinh <small class="text-muted">Offline</small></span></a>
                        </li>
                        <li>
                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/govinda.jpg" alt="user-img" class="img-circle"> <span>Govinda Star <small class="text-success">online</small></span></a>
                        </li>
                        <li>
                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/hritik.jpg" alt="user-img" class="img-circle"> <span>John Abraham<small class="text-success">online</small></span></a>
                        </li>
                        <li>
                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/john.jpg" alt="user-img" class="img-circle"> <span>Hritik Roshan<small class="text-success">online</small></span></a>
                        </li>
                        <li>
                            <a href="javascript:void(0)"><img src="/resourceAdmin/plugins/images/users/pawandeep.jpg" alt="user-img" class="img-circle"> <span>Pwandeep rajan <small class="text-success">online</small></span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /.right-sidebar -->
    </div>
</div>
