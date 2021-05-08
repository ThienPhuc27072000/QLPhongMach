<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="navbar-default sidebar" role="navigation">
    <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;"><div class="sidebar-nav navbar-collapse slimscrollsidebar" style="overflow: hidden; width: auto; height: 100%;">
        <ul class="nav in" id="side-menu">
            <li class="sidebar-search hidden-sm hidden-md hidden-lg">
                <!-- input-group -->
                <div class="input-group custom-search-form">
                    <input type="text" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
            <button class="btn btn-default" type="button"> <i class="fa fa-search"></i> </button>
            </span> </div>
                <!-- /input-group -->
            </li>
            <li class="user-pro">
                <a href="#" class="waves-effect"><img src="<c:url value = "/resourceAdmin/plugins/images/users/d1.jpg"/>" alt="user-img" class="img-circle">
                    <span class="hide-menu">Dr. Steve Gection<span class="fa arrow"></span></span>
                </a>
                <ul class="nav nav-second-level collapse">
                    <li><a href="javascript:void(0)"><i class="ti-user"></i> My Profile</a></li>
                    <li><a href="javascript:void(0)"><i class="ti-email"></i> Inbox</a></li>
                    <li><a href="javascript:void(0)"><i class="ti-settings"></i> Account Setting</a></li>
                    <li><a href="javascript:void(0)"><i class="fa fa-power-off"></i> Logout</a></li>
                </ul>
            </li>
            <li> <a href="/admin/" class="waves-effect active"><i class="ti-dashboard p-r-10"></i> <span class="hide-menu">Bảng điều khiển</span></a> </li>
            <li> <a href="javascript:void(0);" class="waves-effect"><i class="fas fa-mail-bulk"></i> <span class="hide-menu"> Mail <span class="fa arrow"></span><span class="label label-rouded label-danger pull-right">6</span></span></a>
                <ul class="nav nav-second-level collapse">
                    <li> <a href="/inbox/">Hộp thư</a></li>
                    <li> <a href="/inbox/inbox-detail">Chi tiết hộp thư</a></li>
                    <li> <a href="/inbox/compose">Soạn thư</a></li>
                </ul>
            </li>
<%--            <li class="nav-small-cap m-t-10">--- Professional</li>--%>
            <li> <a href="javascript:void(0);" class="waves-effect"><i class="fas fa-calendar-minus"></i>
                <span class="hide-menu"> Cuộc hẹn <span class="fa arrow"></span></span></a>
                <ul class="nav nav-second-level collapse">
                    <li> <a href="/doctors/doctor-schedule">Lịch hẹn bác sĩ</a> </li>
                    <li> <a href="/doctors/book-appointment">Đặt lịch khám </a> </li>
                </ul>
            </li>
            <li> <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-user-md p-r-5"></i>
                <span class="hide-menu"> Bác sĩ <span class="fa arrow"></span></span></a>
                <ul class="nav nav-second-level collapse">
                    <li> <a href="/doctors/">Danh sách bác sĩ</a> </li>
                    <li> <a href="/doctors/add-doctor">Thêm bác sĩ</a> </li>
<%--                    <li> <a href="/doctors/edit-doctor">Cập nhật thông tin bác sĩ </a> </li>--%>
<%--                    <li> <a href="/doctors/doctor-profile">Thông tin bác sĩ</a> </li>--%>
                </ul>
            </li>
            <li> <a href="javascript:void(0);" class="waves-effect"><i class="fas fa-user-injured"></i>
                <span class="hide-menu"> Bệnh nhân <span class="fa arrow"></span></span></a>
                <ul class="nav nav-second-level collapse">
                    <li> <a href="/patients/">Danh sách bệnh nhân</a> </li>
                    <li> <a href="/patients/add-patient">Thêm bệnh nhân </a> </li>
<%--                    <li> <a href="/patients/edit-patient">Cập nhật thông tin bệnh nhân</a> </li>--%>
<%--                    <li> <a href="/patients/patient-profile">Thông tin bệnh nhân </a> </li>--%>
                </ul>
            </li>
            <li> <a href="javascript:void(0);" class="waves-effect"><i class="fas fa-user-tie"></i>
                <span class="hide-menu"> Nhân viên <span class="fa arrow"></span></span></a>
                <ul class="nav nav-second-level collapse">
                    <li> <a href="/employees/">Danh sách nhân viên</a> </li>
                    <li> <a href="/employees/add-employee">Thêm nhân viên </a> </li>
<%--                    <li> <a href="/employees/edit-employee">Cập nhật thông tin nhân viên</a> </li>--%>
<%--                    <li> <a href="/employees/employees-profile">Thông tin nhân viên </a> </li>--%>
                </ul>
            </li>
            <li> <a href="javascript:void(0);" class="waves-effect"><i class="fas fa-pills"></i>
                <span class="hide-menu"> Thuốc <span class="fa arrow"></span></span></a>
                <ul class="nav nav-second-level collapse">
                    <li> <a href="/medicines/">Danh sách thuốc</a> </li>
                    <li> <a href="/medicines/add-medicine">Thêm thuốc </a> </li>
<%--                    <li> <a href="/patients/edit-patient">Cập nhật thông tin nhân viên</a> </li>--%>
<%--                    <li> <a href="/medicines/patient-profile">Thông tin thuốc </a> </li>--%>
                </ul>
            </li>
            <li> <a href="javascript:void(0);" class="waves-effect"><i class="fas fa-envelope-open-text"></i>
                <span class="hide-menu"> Báo cáo <span class="fa arrow"></span></span></a>
                <ul class="nav nav/re-second-level collapse">
                    <li> <a href="/report/payment-report">Báo cáo thanh toán</a></li>
                    <li> <a href="/report/income-report">Báo cáo thu nhập</a></li>
                    <li> <a href="/report/income-report">Báo cáo bán hàng</a></li>
                </ul>
            </li>
            <li> <a href="javascript:void(0);" class="waves-effect"><i class="fas fa-envelope-open-text"></i>
                <span class="hide-menu"> Báo cáo <span class="fa arrow"></span></span></a>
                <ul class="nav nav/re-second-level collapse">
                    <li> <a href="/report/payment-report">Báo cáo thanh toán</a></li>
                    <li> <a href="/report/income-report">Báo cáo thu nhập</a></li>
                    <li> <a href="/report/income-report">Báo cáo bán hàng</a></li>
                </ul>
            </li>
            <li> <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-inr p-r-5"></i>
                <span class="hide-menu"> Thanh toán <span class="fa arrow"></span></span></a>
                <ul class="nav nav-second-level collapse">
                    <li> <a href="/payment/">Thanh toán</a></li>
                    <li> <a href="/payment/add-payment">Thêm thanh toán</a></li>
                    <li> <a href="/payment/patient-invoice">Hóa đơn bệnh nhân</a></li>
                </ul>
            </li>
<%--            <li> <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-inr p-r-5"></i>--%>
<%--                <span class="hide-menu"> Tài khoản <span class="fa arrow"></span></span></a>--%>
<%--            </li>--%>
            <li>
                <a href="/logout" class="waves-effect">
                    <i class="fas fa-sign-out-alt"></i>
                <span class="hide-menu">Đăng xuất </span></a>
            </li>
        </ul>
    </div><div class="slimScrollBar" style="background: rgb(220, 220, 220); width: 0px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 1611px;"></div><div class="slimScrollRail" style="width: 0px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
</div>