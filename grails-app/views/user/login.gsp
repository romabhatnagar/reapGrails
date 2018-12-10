<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>

<body>
<div class="col-sm-6">
    <div class="panel panel-primary">
        <div class="panel-heading">Login</div>

        <div class="panel-body">

            <g:uploadForm controller="user" action="login" method="post" enctype="multipart/form-data">
                <div class="form-group col-sm-6">
                    <label for="email">Email*</label>
                    <input type="email" name="email" value="${email}" class="form-control" size="
                    15" id="email"
                           placeholder="Enter Email" required>
                </div>

                <div class="form-group col-sm-6">
                    <label for="password">Password*</label>
                    <input type="password" name="password" value="${password}" class="form-control" id="password"
                           pattern="[A-Za-z]{5,10}" size="15"
                           title="Must contain 5-10 characters"
                           placeholder="Enter Password" required>
                </div>

                <div class="form-group col-sm-6">
                    <button type="submit" class="btn btn-primary"
                            style="float: left;">Submit</button>
                </div>

                <div>${flash.message}</div>
            </g:uploadForm>
        </div>

        <div>
            <g:link action="forgotPassword" onClick="">Forgot password?</g:link>
        </div>

        <g:link action="index" onClick="">New User Can Register Here</g:link>
    </div>

    <div class="panel-footer ">

    </div>
</div>
</body>
</html>



