
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <asset:stylesheet src="style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Digital Marketing | Welcome</title>
</head>
<body>

<div class="container">
    <header>
        <table border=0 style="width:100%">
            <tr>
                <td style="width:80%">
                    <h3>Digital Marketing</h3>
                </td>
                <td style="width:10%" align="right" valign="middle">
                    Welcome</td>
                    <td style="width:10%" ><div class="dropdown">
                    <button class="dropbtn"><%=request.getParameter("username")%>User<span class="caret"></span>
                    </button>
                    <div class="dropdown-content">
                        <g:link controller="Home" action="index">Logout</g:link>
                        <g:link controller="campaign" action="camp">Campaign</g:link>
                        %{--<g:link controller="#" action="#">Change Password</g:link>--}%

                    </div>
                </div>
                </td>
            </tr>
        </table>
    </header>
</div>
<div class="row">
    <div class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-4 col-xs-offset-4 relative" align="center" >
        <g:form name="myform" url="[controller:'fbSignIn', action:'signIn']" >
            <input type="submit" class="fbbtn" value="Facebook">
        </g:form>
    </div>
</div>
</body>
</html>