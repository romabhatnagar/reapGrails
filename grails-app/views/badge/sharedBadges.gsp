<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <asset:javascript src="application.js"/>
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="ionicons.min.css"/>
    <asset:stylesheet src="style.css"/>
</head>
<header>
    <nav class="navbar header-nav navbar-expand-lg">
        <div class="container" method="GET">
            <!-- Brand -->
            <a class="navbar-brand" href="#">
                <asset:image src="reap.png"/>
            </a>
            <asset:image src="reapfullimage.png"/>
            <!-- / -->
            <!-- Top Menu -->
            <div class="navbar-collapse top-menu flex-column collapse" id="navbar">
                <ul class="navbar-nav ml-auto">
                    <li><g:link action="mainDashboard" class="nav-link"><asset:image src="svg/si-glyph-dashboard.svg"
                                                                                     class="glyphyicon"/>Dashboard</g:link></li>
                    <li><g:link action="index" controller="badge" class="nav-link active"><asset:image
                            src="svg/si-glyph-medal-star.svg"
                            class="glyphyicon"/>Badges</g:link></li>
                &nbsp;&nbsp;
                    <g:form action="logout" controller="user">
                        <button id="logout" type="submit" class="btn btn-default"
                                style="background-color: #2e6da4">Logout
                            <span class="glyphicon-log-out"></span>
                        </button>
                    </g:form>
                </ul>

            </div>

        </div>
</header>

<body>
<section class="section" name="Section1" style="padding-top: 30px; padding-bottom: 20px !important;">
    <div class="container container-custom">
        <div class="row">

            <div class="col-md-5 sm-m-30px-t">

                <div class="card" style="width: 40rem;" id="badges">
                    <div class="card-img-top card-header" style="background-color: #6495ED;">
                        <i class="ion ion-ios-star-half" style="padding-left:15px; padding-right:5px;"></i> Badges &
                    Points
                    </div>

                    <div class="card-body" style="height:13rem;">
                        <asset:image src="svg/si-glyph-person-2.svg" class="glyphyicon"/>
                        <h6 class="card-title">${user.firstName}</h6>
                        <i class="ion ion-ios-star-half" style="padding-left:15px; padding-right:5px; color:gold;">
                            <span>${user.goldEarned}</span></i>
                        <i class="ion ion-ios-star-half" style="padding-left:15px; padding-right:5px; color:silver;">
                            <span>${user.silverEarned}</span></i>
                        <i class="ion ion-ios-star-half" style="padding-left:15px; padding-right:5px; color:brown;">
                            <span>${user.bronzeEarned}</span>
                        </i> <br/>
                        <b>${total} pts</b>

                        <span style="margin-right:27px;">0</span>
                        <span>0</span>
                    </div>

                    <div style="position:absolute;margin-top:12rem; margin-left: 26rem;">
                        <b>${total}
                        pts</b>
                    </div>
                </div>
            </div>


            <div class="col-lg-8 col-md-8"
                 style="float: right; margin-right: 50px; background-color:#b3d7ff; margin-top: 100px">
                <div class="box-content" style="float: left; width: 100%; margin-top: 15px;">
                    <div class="head-bar no-bg"
                         style="height: auto !important;width: 100%;float: left; border-radius: 5px 5px 0 0;">
                        <div class="head-inputs" style="color:#ffffff;">
                            <div class="row">
                                <div class="col-lg-12 col-md-12" style="width: 100%; float: left;">
                                    <ul class="nav nav-tabs trending"
                                        style="margin: 0;width: 100%;display: table;border-radius: 5px 5px 0 0;float: left;font-size: 13px;position: relative;z-index: 1;font-weight: bold;text-transform: uppercase;color: #000000;border: 0;overflow: hidden;padding-left: 0;">
                                        <li class="active"
                                            style="float: none;margin-bottom: -1px;display: table-cell;text-align: center;">
                                            <g:link action="index" style="color:#3E2723; font-size: 15px;">All</g:link>
                                        </li>
                                        <li class="active"
                                            style="float: none;margin-bottom: -1px;display: table-cell;text-align: center;">
                                            <g:link action="sharedBadges" style="color:#3E2723; font-size: 15px;">Badges
                                            Shared</g:link>
                                        </li>
                                        <li class="active"
                                            style="float: none;margin-bottom: -1px;display: table-cell;text-align: center;">
                                            <g:link action="receivedBadges" style="color:#3E2723; font-size: 15px;">Badges
                                            Received</g:link>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12"
                     style="position: relative;display: block;overflow: auto;padding-right: 15px;padding-left: 15px;float: left;width: 100%;background-color: white;margin-top: 5px;">
                    <div class="row" style="margin-right: -5px;margin-left: -5px;box-sizing: border-box;">
                    <div class="col-lg-11" style="padding-left: 40px !important;width: 100%;">
                        <g:each var="recognizeList" in="${sharedList}">
                            <p>
                                <strong>
                                    <td>${recognizeList.givenTo}
                            </strong> has received</td>
                            <i class="ion ion-ios-star-half"
                               style="padding-left:15px; padding-right:5px; color:gold;"></i>
                            <td>${recognizeList.badgeType}</td>
                            from
                            <strong>
                                <td>${recognizeList.takenFrom}
                            </strong></td> for
                            <td>${recognizeList.karma}</td>
                            <br/>
                            <td>${recognizeList.reason}</td>
                            </p>
                            <br/>
                            <hr>
                            </div>
                        </g:each>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- row -->
</div>
</section>
</body>
</html>