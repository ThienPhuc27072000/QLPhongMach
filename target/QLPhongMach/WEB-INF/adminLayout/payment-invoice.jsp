<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="preloader">
    <div class="cssload-speeding-wheel"></div>
</div>
<div id="wrapper">
    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Patient's Invoice</h4> </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> <a href="" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Buy Now</a>
                    <ol class="breadcrumb">
                        <li><a href="#">Hospital</a></li>
                        <li class="active">Patient's Invoice</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-md-12">
                    <div class="white-box">
                        <h3><b>INVOICE</b> <span class="pull-right">#5669626</span></h3>
                        <hr>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="pull-left"> <address>
                                    <h3> &nbsp;<b class="text-danger">Elite Hospital</b></h3>
                                    <p class="text-muted m-l-5">E 104, Dharti-2, <br/>
                                        Nr' Viswakarma Temple, <br/>
                                        Talaja Road, <br/>
                                        Bhavnagar - 364002</p>
                                </address> </div>
                                <div class="pull-right text-right"> <address>
                                    <h3>To,</h3>
                                    <h4 class="font-bold">Richard Nixon</h4>
                                    <p class="text-muted m-l-30">E 104, Dharti-2, <br/>
                                        Nr' Viswakarma Temple, <br/>
                                        Talaja Road, <br/>
                                        Bhavnagar - 364002</p>
                                    <p class="m-t-30"><b>Invoice Date :</b> <i class="fa fa-calendar"></i> 23rd Jan 2017</p>
                                    <p><b>Due Date :</b> <i class="fa fa-calendar"></i> 25th Jan 2017</p>
                                </address> </div>
                            </div>
                            <div class="col-md-12">
                                <div class="table-responsive m-t-40">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th class="text-center">#</th>
                                            <th>Item Name</th>
                                            <th class="text-right">Quantity</th>
                                            <th class="text-right">Charges</th>
                                            <th class="text-right">Total</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="text-center">1</td>
                                            <td>Visiting Charges</td>
                                            <td class="text-right">-</td>
                                            <td class="text-right">$100</td>
                                            <td class="text-right">$100</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">2</td>
                                            <td>Medicines</td>
                                            <td class="text-right">10</td>
                                            <td class="text-right">$100</td>
                                            <td class="text-right">$1000</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">3</td>
                                            <td>X-ray Reports</td>
                                            <td class="text-right">2</td>
                                            <td class="text-right">$600</td>
                                            <td class="text-right">$1200</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">4</td>
                                            <td>Other Charges</td>
                                            <td class="text-right">-</td>
                                            <td class="text-right">-</td>
                                            <td class="text-right">$300</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="pull-right m-t-30 text-right">
                                    <p>Sub - Total amount: $1600</p>
                                    <p>vat (10%) : $160 </p>
                                    <hr>
                                    <h3><b>Total :</b> $1760</h3> </div>
                                <div class="clearfix"></div>
                                <hr>
                                <div class="text-right">
                                    <button class="btn btn-danger" type="submit"> Proceed to payment </button>
                                    <button onClick="javascript:window.print();" class="btn btn-default btn-outline" type="button"> <span><i class="fa fa-print"></i> Print</span> </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- .row -->
            <!-- /.row -->
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
                                    <input id="checkbox2" type="checkbox" checked="" class="fxsdr">
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
        </div>
    </div>
</div>