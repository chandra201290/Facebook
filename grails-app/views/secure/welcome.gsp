
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <asset:stylesheet src="configstyle.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    %{--<link rel="stylesheet" type="text/css" href="Stylesheet.css">--}%
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Digital Marketing | Camapign</title>
</head>
<body>

<div class="container">
    <header>
        <table border="0" style="width:100%">
            <tr>
                <td style="width:60%">
                    <h3>Digital Marketing</h3>
                </td>
                <td style="width:35%" align="right" valign="middle">
                    <p>Welcome <b><%=username%></b></p>
                </td>
            </tr>
        </table>
    </header>
</div>
<div>
    <table border= "0", style="width: 100%">
        <tr>
            <td align="center" >
                <h3>Configurations</h3>
            <td>
        <tr>
    </table>
</div><hr>
<div class="row">
    <table border= "0" style="width:100%">
        <tr style="width:100%">
            <td style="width:100%">
                <ul>
                    <li><a href="#">SOCIAL</a></li>
                    <li><a href="#">CUSTOMERS</a></li>
                    <li><a href="#">COMPANY</a></li>
                    <!--<li><a href="#">LISTEN</a></li>
				<li><a href="#">IN LOCATION</a></li>
				<li><a href="#">CATALOGUE</a></li>-->
                </ul>
            </td>
        </tr>
    </table><hr>
    <div>
        <div class="bod">
            <div class="bod" style="width:69%; float:left;border-radius:30px; background-color:white;"></div>
            <div class="bod" style="width:30%; float:right;border:0px;  border-radius:30px; background-color:white"; align="center"><br>
                <p align="left" style="margin-left:20px; color:black"><b>ADD AN ACCOUNT</b></p><hr>
                <g:form name="#" url="[controller:'fbSignIn', action:'signin']">
                    <input style="padding: 10px; background-color:#3b5998" type="submit" class="fbbtn" value="Facebook">
                </g:form>
                <!--<form name="#" url="[controller:'#', action:'#']">
				<input type="submit" class="fbbtn" value="Twitter" style= "background-color:#4099ff">
			</form>
			<form name="#" url="[controller:'#', action:'#']">
				<input type="submit" class="fbbtn" value="Linkedln" style="background-color:#0e76a8">
			</form>
			<form name="#" url="[controller:'#', action:'#']">
				<input type="submit" class="fbbtn" value="Google+" style="background-color:#d34836">
			</form>-->
            </div>
        </div>
    </div>
</div>
</body>
</html>