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
                    <h4 class="page-title">Inbox Detail</h4> </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> <a href="" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Buy Now</a>
                    <ol class="breadcrumb">
                        <li><a href="#">Dashboard</a></li>
                        <li class="active">Inbox Detail</li>
                    </ol>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- row -->
            <div class="row">
                <!-- Left sidebar -->
                <div class="col-md-12">
                    <div class="white-box">
                        <div class="row">
                            <div class="col-lg-2 col-md-3  col-sm-4 col-xs-12 inbox-panel">
                                <div> <a href="#" class="btn btn-custom btn-block waves-effect waves-light">Compose</a>
                                    <div class="list-group mail-list m-t-20"> <a href="inbox.html" class="list-group-item active">Inbox <span class="label label-rouded label-success pull-right">5</span></a> <a href="#" class="list-group-item ">Starred</a> <a href="#" class="list-group-item">Draft <span class="label label-rouded label-warning pull-right">15</span></a> <a href="#" class="list-group-item">Sent Mail</a> <a href="#" class="list-group-item">Trash <span class="label label-rouded label-default pull-right">55</span></a> </div>
                                    <h3 class="panel-title m-t-40 m-b-0">Labels</h3>
                                    <hr class="m-t-5">
                                    <div class="list-group b-0 mail-list"> <a href="#" class="list-group-item"><span class="fa fa-circle text-info m-r-10"></span>Work</a> <a href="#" class="list-group-item"><span class="fa fa-circle text-warning m-r-10"></span>Family</a> <a href="#" class="list-group-item"><span class="fa fa-circle text-purple m-r-10"></span>Private</a> <a href="#" class="list-group-item"><span class="fa fa-circle text-danger m-r-10"></span>Friends</a> <a href="#" class="list-group-item"><span class="fa fa-circle text-success m-r-10"></span>Corporate</a> </div>
                                </div>
                            </div>
                            <div class="col-lg-10 col-md-9 col-sm-8 col-xs-12 mail_listing">
                                <div class="media m-b-30 p-t-20">
                                    <h4 class="font-bold m-t-0">Your message title goes here</h4>
                                    <hr>
                                    <a class="pull-left" href="#"> <img class="media-object thumb-sm img-circle" src="../plugins/images/users/pawandeep.jpg" alt=""> </a>
                                    <div class="media-body"> <span class="media-meta pull-right">07:23 AM</span>
                                        <h4 class="text-danger m-0">Pavan kumar</h4> <small class="text-muted">From: jonathan@domain.com</small> </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.</p>
                                <p>enean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar,</p>
                                <hr>
                                <h4> <i class="fa fa-paperclip m-r-10 m-b-10"></i> Attachments <span>(3)</span> </h4>
                                <div class="row">
                                    <div class="col-sm-2 col-xs-4">
                                        <a href="#"> <img class="img-thumbnail img-responsive" alt="attachment" src="../plugins/images/img1.jpg"> </a>
                                    </div>
                                    <div class="col-sm-2 col-xs-4">
                                        <a href="#"> <img class="img-thumbnail img-responsive" alt="attachment" src="../plugins/images/img2.jpg"> </a>
                                    </div>
                                    <div class="col-sm-2 col-xs-4">
                                        <a href="#"> <img class="img-thumbnail img-responsive" alt="attachment" src="../plugins/images/img3.jpg"> </a>
                                    </div>
                                </div>
                                <hr>
                                <div class="b-all p-20">
                                    <p class="p-b-20">click here to <a href="#">Reply</a> or <a href="#">Forward</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
                                    <input id="checkbox1" type="checkbox" checked="" class="fxhdr">
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
                            <br/>
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