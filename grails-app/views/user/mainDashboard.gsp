<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <asset:javascript src="application.js"/>
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="ionicons.min.css"/>
    <asset:stylesheet src="style.css"/>

    <script>
        $(document).ready(function () {
            $("#karmaOne").click(function () {
                var text = jQuery(this).attr("data-text");
                $("#mainReason").text(text);
            });
            $("#karmaTwo").click(function () {
                var text = jQuery(this).attr("data-text");
                $("#mainReason").text(text);
            });
            $("#karmaThree").click(function () {
                var text = jQuery(this).attr("data-text");
                $("#mainReason").text(text);
            });
            $("#karmaFour").click(function () {
                var text = jQuery(this).attr("data-text");
                $("#mainReason").text(text);
            });
            $("#karmaFive").click(function () {
                var text = jQuery(this).attr("data-text");
                $("#mainReason").text(text);
            });
            $("#karmaSix").click(function () {
                var text = jQuery(this).attr("data-text");
                $("#mainReason").text(text);
            });

            $("#mentorship1").click(function () {
                var text = jQuery(this).attr("data-text");
                $("#mainReason").text(text);
            });
            $("#mentorship2").click(function () {
                var text = jQuery(this).attr("data-text");
                $("#mainReason").text(text);
            });
            $("#mentorship3").click(function () {
                var text = this.value;
                $("#mainReason").text(text);
            });
            $("#mentorship4").click(function () {
                var text = this.value;
                $("#mainReason").text(text);
            });
            $("#mentorship5").click(function () {
                var text = jQuery(this).attr("data-text");
                $("#mainReason").text(text);
            });
            $("#mentorship6").click(function () {
                var text = jQuery(this).attr("data-text");
                $("#mainReason").text(text);
            });
            $("#mentorship7").click(function () {
                var text = jQuery(this).attr("data-text");
                $("#mainReason").text(text);
            });
        });

        function show(value) {
            document.getElementById('mainReason').style.display = "block";
            document.getElementById('extraMiler').style.display = "none";
            document.getElementById('showMentorship').style.display = "none";

        }

        function showReasons(value) {
            if (value.value == 'Karma: Mentorship') {
                document.getElementById('reason').style.display = "none";
                document.getElementById('showMentorship').style.display = "block";
                document.getElementById('extraMiler').style.display = "none";
            }
            else if (value.value == 'Karma: Extra Miler') {
                document.getElementById('reason').style.display = "none";
                document.getElementById('extraMiler').style.display = "block";
                document.getElementById('showMentorship').style.display = "none";
            }
            else {
                document.getElementById('showMentorship').style.visibility = "hidden";
            }
        }
    </script>

    <style>

    .hide {
        display: none;
    }

    .show {
        display: block;
    }

    .profilePic {
        height: 40px;
        width: 40px;
    }

    #profileMenu {
        position: relative;
        float: right;
        margin-right: 50px;
        margin-top: -30px;
        height: 200px;
        width: 400px;
        background-color: white;
        z-index: 1000;
        border: 1px grey solid;
    }

    .profileImage {
        float: left;
        margin-top: 20px;
        margin-left: 20px;
        height: 60px;
        width: 60px;
    }

    .profileDetailsFont {
        font-size: 14px;
    }

    #profileFooter {
        padding-top: 150px;
    }
    </style>
</head>

<body onload="addHideClass()">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
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
                    <g:form action="logout">
                        <button id="logout" type="submit" class="btn btn-default"
                                style="background-color: #2e6da4">Logout
                            <span class="glyphicon-log-out"></span>
                        </button>
                    </g:form>
                </ul>

            </div>
            <!-- / -->

        </div><!-- Container -->
    </nav> <!-- Navbar -->

    <div id="profileMenu" class="">
        <div><!--Div for image--->
            <p style="margin-left:20px; margin-right:20px; margin-bottom:-10px; margin-top:10px;">Your Profile</p>
            <asset:image src="" class="profileImage"/>
        </div>

        <div style="float:right; margin-right:90px; margin-top:20px;"><!--Div for details--->
            <p class="profileDetailsFont">Newer Name:

            <div>${user.firstName}></div>

            <p class="profileDetailsFont">Email Id:

            <div>${user.email}"></div>
        </p>
        </div>

        <div id="profileFooter">
            <div style="width:50%; float:left; text-align: center; background-color:#F5F4F4;">
                <g:link action="">Users</g:link>
            </div>

            <div style="width:50%; float:right; text-align: center; background-color:#F5F4F4;">
                <g:link action="">Logout</g:link>
            </div>
        </div>
    </div>


    <section class="section" name="Section1" style="padding-top: 30px; padding-bottom: 20px !important;">
        <div class="container container-custom">
            <div class="row">
                <div class="col-md-10">
                    <div class="card">
                        <div class="card-img-top card-header" style="background-color: #0e5a80;">
                            <i class="ion ion-ios-star-half" style="padding-left:15px; padding-right:5px;"></i>
                            Recongnize Karma
                        </div>
                    <div class="card-body">
                        <g:uploadForm controller="Recognize" action="recognize" id="recognize-form" role="form"
                                      class="form" method="post">
                            <span class="card-text">
                                <div class="input-group m-3" style="width:85%">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1"><asset:image
                                                src="/svg/si-glyph-person-2.svg"
                                                class="glyphyicon"/></span>
                                    </div>
                                    <input type="text" class="form-control xs-3" placeholder="Username" name="givenTo"
                                           aria-label="Username" aria-describedby="basic-addon1" id="name" required
                                           autocomplete="off">
                                    <select style="margin-left:30px" name="badgeType" required>
                                        <option value="" selected>Select a Badge</option>
                                        <option value="Gold">Gold</option>
                                        <option value="Silver">Silver</option>
                                        <option value="Bronze">Bronze</option>
                                    </select>
                                    <select style="margin-left:30px" id="karma" name="karma" required
                                            onchange="showReasons(this);">
                                        <option value="" selected>Select a Karma/Core Value</option>
                                        <option value="Karma: Extra Miler">Karma: Extra Miler</option>
                                        <option value="Karma: Knowledge Sharing">Karma: Knowledge Sharing</option>
                                        <option value="Karma: Mentorship">Karma: Mentorship</option>
                                        <option value="Karma: Pat on the back">Karma: Pat on the back</option>
                                        <option value="Karma: Customer Delight">Karma: Customer Delight</option>
                                        <option value="Core Value: Continuous Learning and Improvement">Core Value: Continuous Learning and Improvement</option>
                                        <option value="Core Value: Contribution">Core Value: Contribution</option>
                                        <option value="Core Value: Diligence<">Core Value: Diligence</option>
                                        <option value="Core Value: Empathy">Core Value: Empathy</option>
                                        <option value="Core Value: Openness to Feedback and Change">Core Value: Opennes to Feedback and Change</option>
                                        <option value="Core Value: Responsible Freedom">Core Value: Responsible Freedom</option>
                                    </select>
                                </div>
                            </span>

                            <div class="col-md-12">
                                <div class="alert alert-danger" role="alert" <g:if test="">
                                ${flash.message}
                            </g:if>
                            </div>
                            </div>


                            <!--<div stlye="font-weight:200;"> Reason</div>-->
                            <textarea rows="3" cols="90" class="m-3" id="reason"
                                      name="reason" placeholder="Please specify a reason!"></textarea>
                            <input type="Submit" value="Recognize" style="float:right !important;"
                                   class="btn btn-primary">

                            <div class="displayStyle display" id="showMentorship" style="display:none;">
                                <label>Please select any one of the following, as applicable:</label>
                                <br>

                                <div class="row">
                                    <span class="col-lg-1 col-md-1" style="padding-right: 0px">
                                        <input type="hidden" name="_indicative_29"><input type="checkbox"
                                                                                          id="mentorship1"
                                                                                          name="indicative_29"
                                                                                          onclick="show(this)"
                                                                                          data-text="You have always led us by example, which inspires me a lot."
                                                                                          class="reason-checkbox"
                                                                                          style="height: 15px">
                                    </span>
                                    <span class="col-lg-11 col-md-11"
                                          style="padding-left: 0px;vertical-align: middle">
                                        You have always led us by example, which inspires me a lot.
                                    </span>
                                </div>

                                <div class="row">
                                    <span class="col-lg-1 col-md-1" style="padding-right: 0px">
                                        <input type="hidden" name="_indicative_30"><input type="checkbox"
                                                                                          id="mentorship2"
                                                                                          name="indicative_30"
                                                                                          onclick="show(this)"
                                                                                          data-text="I want to recognize you for all the guidance provided in the project"
                                                                                          class="reason-checkbox"
                                                                                          style="height: 15px">
                                    </span>
                                    <span class="col-lg-11 col-md-11"
                                          style="padding-left: 0px;vertical-align: middle">
                                        I want to recognize you for all the guidance provided in the project
                                    </span>
                                </div>

                                <div class="row">
                                    <span class="col-lg-1 col-md-1" style="padding-right: 0px">
                                        <input type="hidden" name="_indicative_31"><input type="checkbox"
                                                                                          id="mentorship3"
                                                                                          onclick="show(this)"
                                                                                          name="indicative_31"
                                                                                          data-text="You make tough tasks seem simple, workable and achievable. Your help during project/situation )"
                                                                                          class="reason-checkbox"
                                                                                          style="height: 15px">
                                    </span>
                                    <span class="col-lg-11 col-md-11"
                                          style="padding-left: 0px;vertical-align: middle">
                                        You make tough tasks seem simple, workable and achievable. Your help during project/situation
                                    </span>
                                </div>

                                <div class="row">
                                    <span class="col-lg-1 col-md-1" style="padding-right: 0px">
                                        <input type="hidden" name="_indicative_34"><input type="checkbox"
                                                                                          id="mentorship4"
                                                                                          name="indicative_34"
                                                                                          onclick="show(this)"
                                                                                          data-text="Your guidance in shaping up my career and helping me figure out my long term goals has been tremendous. Through you, I learnt maany things"
                                                                                          class="reason-checkbox"
                                                                                          style="height: 15px">
                                    </span>
                                    <span class="col-lg-11 col-md-11"
                                          style="padding-left: 0px;vertical-align: middle">
                                        Your guidance in shaping up my career and helping me figure out my long term goals has been tremendous. Through you, I learnt
                                    </span>
                                </div>

                                <div class="row">
                                    <span class="col-lg-1 col-md-1" style="padding-right: 0px">
                                        <input type="hidden" name="_indicative_35"><input type="checkbox"
                                                                                          id="mentorship5"
                                                                                          name="indicative_35"
                                                                                          onclick="show(this)"
                                                                                          data-text="Working with you is like consistently having a friend who has guided me throughout)"
                                                                                          class="reason-checkbox"
                                                                                          style="height: 15px">
                                    </span>
                                    <span class="col-lg-11 col-md-11"
                                          style="padding-left: 0px;vertical-align: middle">
                                        Working with you is like consistently having a friend who has guided me throughout.
                                    </span>
                                </div>

                                <div class="row">
                                    <span class="col-lg-1 col-md-1" style="padding-right: 0px">
                                        <input type="hidden" name="_indicative_59"><input type="checkbox"
                                                                                          id="mentorship6"
                                                                                          name="indicative_59"
                                                                                          onclick="show(this)"
                                                                                          data-text="Your personality inspires me"
                                                                                          class="reason-checkbox"
                                                                                          style="height: 15px">
                                    </span>
                                    <span class="col-lg-11 col-md-11"
                                          style="padding-left: 0px;vertical-align: middle">
                                        Your personality inspires me.
                                    </span>
                                </div>

                                <div class="row">
                                    <span class="col-lg-1 col-md-1" style="padding-right: 0px">
                                        <input type="hidden" name="_indicative_61"><input type="checkbox"
                                                                                          id="mentorship7"
                                                                                          name="indicative_61"
                                                                                          onclick="show(this)"
                                                                                          data-text="Thanks for all the motivation/encouragement. I cannot forget the time when I was stuck/low and you helped me)"
                                                                                          class="reason-checkbox"
                                                                                          style="height: 15px">
                                    </span>
                                    <span class="col-lg-11 col-md-11"
                                          style="padding-left: 0px;vertical-align: middle">
                                        Thanks for all the motivation/encouragement. I cannot forget the time when I was stuck/low and you helped me)
                                    </span>
                                </div>

                                <div class="row">
                                    <span class="col-lg-1 col-md-1" style="padding-right: 0px">
                                        <input type="hidden" name="_indicative_62"><input type="checkbox"
                                                                                          id="mentorship8"
                                                                                          name="indicative_62"
                                                                                          onclick="show(this)"
                                                                                          data-text="Add your own comments"
                                                                                          class="reason-checkbox"
                                                                                          style="height: 15px">
                                    </span>
                                    <span class="col-lg-11 col-md-11"
                                          style="padding-left: 0px;vertical-align: middle">
                                        Add your own comments
                                    </span>
                                </div>
                            </div>

                            <div class="displayStyle display" id="extraMiler" style="display: none">
                                <label>Please select any one of the following, as applicable:</label>
                                <br>

                                <div class="row">
                                    <span class="col-lg-1 col-md-1" style="padding-right: 0px">
                                        <input type="hidden" name="_indicative_41"><input type="checkbox"
                                                                                          id="karmaOne"
                                                                                          onclick="show(this)"
                                                                                          name="indicative_41"
                                                                                          data-text="You went above and beyond the call of duty. Your going extra mile helped create value for client."
                                                                                          class="reason-checkbox"
                                                                                          style="height: 15px">
                                    </span>
                                    <span class="col-lg-11 col-md-11"
                                          style="padding-left: 0px;vertical-align: middle">
                                        You went above and beyond the call of duty.Your going extra mile helped create value for client.
                                    </span>
                                </div>

                                <div class="row">
                                    <span class="col-lg-1 col-md-1" style="padding-right: 0px">
                                        <input type="hidden" name="_indicative_42"><input type="checkbox"
                                                                                          id="karmaTwo"
                                                                                          onclick="show(this)"
                                                                                          name="indicative_42"
                                                                                          data-text="You went above and beyond the call of duty . Your going extra mile helped meet the dead lines."
                                                                                          class="reason-checkbox"
                                                                                          style="height: 15px">
                                    </span>
                                    <span class="col-lg-11 col-md-11"
                                          style="padding-left: 0px;vertical-align: middle">
                                        You went above and beyond the call of duty . Your going extra mile helped meet the dead lines.
                                    </span>
                                </div>

                                <div class="row">
                                    <span class="col-lg-1 col-md-1" style="padding-right: 0px">
                                        <input type="hidden" name="_indicative_43"><input type="checkbox"
                                                                                          id="karmaThree"
                                                                                          onclick="show(this)"
                                                                                          name="indicative_43"
                                                                                          data-text="You went above and beyond the call of duty . Your going extra mile helped deliver quality work."
                                                                                          class="reason-checkbox"
                                                                                          style="height: 15px">
                                    </span>
                                    <span class="col-lg-11 col-md-11"
                                          style="padding-left: 0px;vertical-align: middle">
                                        You went above and beyond the call of duty . Your going extra mile helped deliver quality work.
                                    </span>
                                </div>

                                <div class="row">
                                    <span class="col-lg-1 col-md-1" style="padding-right: 0px">
                                        <input type="hidden" name="_indicative_44"><input type="checkbox"
                                                                                          id="karmaFour"
                                                                                          onclick="show(this)"
                                                                                          name="indicative_44"
                                                                                          data-text="You went above and beyond the call of duty.Your going extra mile helped improved your teams performance."
                                                                                          class="reason-checkbox"
                                                                                          style="height: 15px">
                                    </span>
                                    <span class="col-lg-11 col-md-11"
                                          style="padding-left: 0px;vertical-align: middle">
                                        You went above and beyond the call of duty.Your going extra mile helped improved your teams performance.
                                    </span>
                                </div>

                                <div class="row">
                                    <span class="col-lg-1 col-md-1" style="padding-right: 0px">
                                        <input type="hidden" name="_indicative_45"><input type="checkbox"
                                                                                          id="karmaFive"
                                                                                          onclick="show(this)"
                                                                                          name="indicative_45"
                                                                                          data-text="You went above and beyond the call of duty . Your going extra mile helped maintain a happy workplace/team culture/friendly environment."
                                                                                          class="reason-checkbox"
                                                                                          style="height: 15px">
                                    </span>
                                    <span class="col-lg-11 col-md-11"
                                          style="padding-left: 0px;vertical-align: middle">
                                        You went above and beyond the call of duty . Your going extra mile helped maintain a happy workplace/team culture/friendly environment.
                                    </span>
                                </div>

                                <div class="row">
                                    <span class="col-lg-1 col-md-1" style="padding-right: 0px">
                                        <input type="hidden" name="_indicative_56"><input type="checkbox"
                                                                                          id="karmaSix"
                                                                                          onclick="show(this)"
                                                                                          name="indicative_56"
                                                                                          data-text="Add your own comments."
                                                                                          class="reason-checkbox"
                                                                                          style="height: 15px">
                                    </span>
                                    <span class="col-lg-11 col-md-11"
                                          style="padding-left: 0px;vertical-align: middle">
                                        Add your own comments.
                                    </span>
                                </div>
                            </div>

                            <!--<div stlye="font-weight:200;"> Reason</div>-->
                            <textarea rows="3" cols="90" class="m-3" id="mainReason" style="display:none;"
                                      name="reason"></textarea>
                            <!--<input type="Submit"  value="" style="float:right !important;"-->
                            <!--class="btn btn-primary">-->

                        </g:uploadForm>
                    </div>
                </div>
            </div> <!-- col -->
            <div class="col-md-2 sm-m-30px-t">
                <div class="card" style="width: 19rem;">
                    <div class="card-img-top card-header" style="background-color: #0e5a80;">
                        <i class="ion ion-ios-star-half" style="padding-left:15px; padding-right:5px;"></i> My
                    Badges
                    </div>

                    <div class="card-body">
                        <asset:image src="svg/si-glyph-person-2.svg" class="glyphyicon"/>
                        <!--<asset:image src="" height="50px" width="50px" / class="badgeImage"/>-->
                        <h6>
                            <div class="card-title">${user.firstName} ${user.lastName}</div>
                        </h6>
                        <tr>
                            <td>${user.goldEarned}</td>
                            <i class="ion ion-ios-star-half"
                               style="padding-left:15px; padding-right:5px; color:gold;"></i>
                            <td>${user.silverEarned}</td>
                            <i class="ion ion-ios-star-half"
                               style="padding-left:15px; padding-right:5px; color:silver;"></i>
                            <td>${user.bronzeEarned}</td>
                            <i class="ion ion-ios-star-half"
                               style="padding-left:15px; padding-right:5px; color:brown;"></i>
                        </tr>
                    </div>
                </div>

            </div>

        </div><!-- row -->
    </div>
    </section>
    <section class="section" name="section 2" style="margin-top:10px !important; padding-top:0px !important;">
        <div class="container container-custom">
            <div class="row">
                <div class="col-md-10">
                    <div class="card" style="width: 55rem;">
                        <div class="card-img-top card-header" style="background-color: #0e5a80;">
                            <i class="icon ion-md-save" style="padding-left:15px; padding-right:5px;"></i> Wall Of Fame
                        </div>

                        <div class="card-body">
                            <div class="newersBoardImage">
                                <g:each var="recognize" in="${recognizeList}">
                                    <g:each var="givenTo" in="${to}">
                                        <g:each var="takenFrom" in="${from}">

                                            <span>
                                                <i class="fa fa-user" style="height: 20px"></i>
                                            </span>
                                            <p>
                                                <strong>
                                                    <td>${to}
                                            </strong> has received
                                            <i class="ion ion-ios-star-half"
                                               style="padding-left:15px; padding-right:5px; color:gold;"></i></td>
                                            <td>${recognize.badgeType}</td>
                                            from
                                            <strong>
                                                <td>${from}
                                            </strong></td> for
                                            <td>${recognize.karma}</td>
                                            <br/>
                                            <td>${recognize.reason}</td>
                                            </p>
                                            <br/>
                                            <hr>
                                        </g:each>
                                    </g:each>
                                </g:each>
                            </div>

                        </div>
                    </div>
                </div> <!-- col -->
                <div class="col-md-2 sm-m-30px-t">
                    <div class="card" style="width: 19rem; margin-top: -170px;">
                        <div class="card-img-top card-header" style="background-color: #0e5a80;">
                            <asset:image src="svg/_ionicons_svg_md-star-half.svg" style="width: 20px"></asset:image>
                            Newers Board
                        </div>

                        <div class="card-body">
                            <div class="newersBoardImage">
                                <asset:image src="svg/si-glyph-person-2.svg" style="width: 20px" class="glyphyicon"/>
                                <h6 class="card-title">
                                    <div>${user.firstName}</div>
                                </h6>
                                <i class="ion ion-ios-star-half"
                                   style="padding-left:15px; padding-right:5px;color: gold"></i>
                                <i class="ion ion-ios-star-half"
                                   style="padding-left:15px; padding-right:5px; color: silver"></i>
                                <i class="ion ion-ios-star-half"
                                   style="padding-left:15px; padding-right:5px; color: brown"></i>
                            </div>
                        </div>
                    </div>

                </div>
            </div><!-- row -->
        </div>
    </section>

</header>
</body>
</html>