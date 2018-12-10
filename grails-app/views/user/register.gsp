<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>

<body>
<div class="col-sm-12">
    <div class="panel panel-primary">
        <div class="panel-heading">Register</div>

        <div class="panel-body">
            <g:uploadForm controller="user" action="register" method="post" enctype="multipart/form-data">
                <div class="form-group col-sm-12">

                    <label for="firstName">First Name*</label>
                    <input type="text" name="firstName" value="${firstName}" class="form-control" id="firstName"
                           placeholder="Enter First Name" required style="width: 300px">
                </div>

                <div class="form-group col-sm-12">
                    <label for="lastName">Last Name*</label>
                    <input type="text" name="lastName" value="${lastName}" class="form-control" id="lastName"
                           placeholder="Enter last Name" required style="width: 300px">
                </div>

                <div class="form-group col-sm-12">
                    <label for="email">Email*</label>
                    <input type="email" name="email" value="${email}" class="form-control" id="email"
                           placeholder="Enter Email" required style="width: 300px">
                </div>

                <div class="form-group col-sm-12">
                    <label for="password">Password*</label>
                    <input type="password" name="password" value="${password}" class="form-control" id="password"
                           pattern="[A-Za-z]{5,10}" style="width: 300px"
                           title="Please enter combination of minimum of 5 alphabtes" placeholder="Enter Password"
                           required>
                </div>

            %{-- <div class="form-group col-sm-12">
                 <label for="confirmpassword">Confirm Password*</label>
                 <input type="password" name="confirmpassword" value="${confirmpassword}" class="form-control"
                        id="confirmpassword" style="width: 300px"
                        placeholder="Enter Confirm Password" required>
             </div>--}%

            %{--<div class="form-group col-sm-12">
                Photo:<br>
                <input type="file" name="photo" id="photo"><br><br>
            </div>--}%

                <div class="form-group col-sm-12">
                    <button type="submit" class="btn btn-primary"
                            style="float: left">Submit</button>
                </div>
            </g:uploadForm>
            ${flash.message}

            <div>
                <g:link action="userLogin" onClick="">Already Registered User Login Here</g:link>
            </div>
        </div>
    </div>
</div>
</body>
</html>



