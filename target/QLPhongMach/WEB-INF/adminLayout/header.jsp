<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-default navbar-static-top m-b-0">
    <div class="navbar-header"> <a class="navbar-toggle hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse" data-target=".navbar-collapse"><i class="ti-menu"></i></a>
        <div class="top-left-part"><a class="logo" href="/admin/"><b><img src="<c:url value = "/resourceAdmin/plugins/images/eliteadmin-logo.png"/>" alt="home"></b><span class="hidden-xs"><strong>elite</strong>hospital</span></a></div>
        <ul class="nav navbar-top-links navbar-left hidden-xs">
                <form role="search" class="app-search hidden-xs">
                    <input type="text" placeholder="Search..." class="form-control" style="margin-left: 40px"> <a href="" class="active"><i class="fa fa-search"></i></a> </form>
            </li>
        </ul>
        <ul class="nav navbar-top-links navbar-right pull-right">
            <li class="dropdown">
                <ul class="dropdown-menu mailbox animated bounceInDown">
                    <li>
                        <div class="drop-title">You have 4 new messages</div>
                    </li>
                    <li>
                        <div class="message-center">
                            <a href="#">
                                <div class="user-img"> <img src="<c:url value = "/resourceAdmin/plugins/images/users/pawandeep.jpg"/>" alt="user" class="img-circle"> <span class="profile-status online pull-right"></span> </div>
                                <div class="mail-contnet">
                                    <h5>Pavan kumar</h5> <span class="mail-desc">Just see the my admin!</span> <span class="time">9:30 AM</span> </div>
                            </a>
                            <a href="#">
                                <div class="user-img"> <img src="<c:url value = "/resourceAdmin/plugins/images/users/sonu.jpg"/>" alt="user" class="img-circle"> <span class="profile-status busy pull-right"></span> </div>
                                <div class="mail-contnet">
                                    <h5>Sonu Nigam</h5> <span class="mail-desc">I've sung a song! See you at</span> <span class="time">9:10 AM</span> </div>
                            </a>
                            <a href="#">
                                <div class="user-img"> <img src="<c:url value = "/resourceAdmin/plugins/images/users/arijit.jpg" />" alt="user" class="img-circle"> <span class="profile-status away pull-right"></span> </div>
                                <div class="mail-contnet">
                                    <h5>Arijit Sinh</h5> <span class="mail-desc">I am a singer!</span> <span class="time">9:08 AM</span> </div>
                            </a>
                            <a href="#">
                                <div class="user-img"> <img src="<c:url value = "/resourceAdmin/plugins/images/users/pawandeep.jpg"/>" alt="user" class="img-circle"> <span class="profile-status offline pull-right"></span> </div>
                                <div class="mail-contnet">
                                    <h5>Pavan kumar</h5> <span class="mail-desc">Just see the my admin!</span> <span class="time">9:02 AM</span> </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <a class="text-center" href="javascript:void(0);"> <strong>See all notifications</strong> <i class="fa fa-angle-right"></i> </a>
                    </li>
                </ul>
                <!-- /.dropdown-messages -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#">
                    <img src="<c:url value = "/resourceAdmin/plugins/images/users/d1.jpg"/>" alt="user-img"
                         width="36" class="img-circle" style="margin-top: 10px;">
                    <b class="hidden-xs">${pageContext.request.userPrincipal.name}</b>
                </a>
            </li>
        </ul>
    </div>
</nav>
