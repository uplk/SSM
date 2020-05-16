
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!--Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="../img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">IndoorsCoder</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <li class="nav-item has-treeview">
                    <a href="${pageContext.request.contextPath}/pages/index.jsp" class="nav-link active">
                        <%--                        <i class="far fa-circle nav-icon"></i>--%>
                        <p>Home</p>
                    </a>

                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
<%--                        <i class="far fa-circle nav-icon"></i>--%>
                        <p>
                            Data Statistics
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview ">
                        <li clas="nav-item">
                            <a href="${pageContext.request.contextPath}/statistics/major-statistics.do" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Major Statistics</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="${pageContext.request.contextPath}/statistics/video-statistics.do" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Video Statistics</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="${pageContext.request.contextPath}/statistics/picture-statistics.do" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Picture Statistics</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="${pageContext.request.contextPath}/statistics/music-statistics.do" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Music Statistics</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="${pageContext.request.contextPath}/statistics/all-statistics.do" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>All Statistics</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- statistics nav end-->
                <!--major nav -->
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
<%--                        <i class="nav-icon fas fa-tachometer-alt"></i>--%>
                        <p>
                            Major Manage
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview ">
                        <li clas="nav-item">
                            <a href="${pageContext.request.contextPath}/pages/major-add.jsp" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Major Add</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="${pageContext.request.contextPath}/major/findAll.do" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Major List</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="${pageContext.request.contextPath}/pages/major-show-detail.jsp" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Major Show</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--major nav end -->
                <!--picture nav-->
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
<%--                        <i class="nav-icon fas fa-tachometer-alt"></i>--%>
                        <p>
                            Picture Manage
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview ">
                        <li clas="nav-item">
                            <a href="${pageContext.request.contextPath}/pages/picture-add.jsp" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Picture Add</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="${pageContext.request.contextPath}/picture/findAll.do" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Picture List</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="${pageContext.request.contextPath}/picture/picture-show-detail.jsp" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Picture Show</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--picture nav end-->
                <!--video nav-->
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
<%--                        <i class="nav-icon fas fa-tachometer-alt"></i>--%>
                        <p>
                            Video Manage
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview ">
                        <li clas="nav-item">
                            <a href="${pageContext.request.contextPath}/pages/video-add.jsp" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Video Add</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="${pageContext.request.contextPath}/video/findAll.do" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Video List</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="${pageContext.request.contextPath}/pages/video-show-detail.jsp" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Video Show</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--video nav end-->
                <!--music nav-->
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
<%--                        <i class="nav-icon fas fa-tachometer-alt"></i>--%>
                        <p>
                            Music Manage
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview ">
                        <li clas="nav-item">
                            <a href="${pageContext.request.contextPath}/pages/music-add.jsp" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Music Add</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="${pageContext.request.contextPath}/music/findAll.do" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Music List</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a href="${pageContext.request.contextPath}/pages/music-show-detail.jsp" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                <p>Music Show</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--music nav end-->
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>