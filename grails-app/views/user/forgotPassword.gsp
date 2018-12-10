<!DOCTYPE html>
<html lang="en">
<head>

    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/static/css/index.css">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
</head>

<body>
<div class="form-gap"></div>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="text-center">
                        <h3><i class="fa fa-lock fa-4x"></i></h3>

                        <h2 class="text-center">Forgot Password?</h2>

                        <p>You can get your password here.</p>
                    <div class="panel-body">

                        <g:form id="register-form" role="form" action="sendPassword" class="form" method="post">
                            <div class="form-group">
                                <div class="col-md-12">
                                    ${flash.message}
                                    <div class="input-group">
                                        <span class="input-group-addon"><i
                                                class="glyphicon glyphicon-envelope color-blue"></i></span>
                                        <input id="email" name="email" placeholder="email address" class="form-control"
                                               type="email">
                                    </div>
                                </div>
                            </div>
                            </div>
                            <div class="form-group">
                                <input name="recover-submit" class="btn btn-lg btn-primary btn-block"
                                       value="Send Password" type="submit">
                            </div>

                            <input type="hidden" class="hide" name="token" id="token" value="">
                        </g:form>
                    </div>

                    <div class="panel-footer ">
                        <g:link action="userLogin">Go Back</g:link>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

</body>
</html>