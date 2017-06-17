
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <asset:stylesheet src="configstyle.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Stylesheet.css">
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
                    <p>Welcome <b><%=request.getParameter("username")%></b></p>
                </td>
            </tr>
        </table>
    </header>
</div>
<div>
    <table border= "0", style="width: 100%">
        <tr>
            <td align="center" >
                <h3>Campaign</h3>
            <td>
        <tr>
    </table>
</div><hr>

<div class="bod" style="height:500px;">

    <div class="bod" style="width:69%; height:100%;float:left;border:0px;  border-radius:30px; border:0px solid black;">
        <div style="width:100%; height:50%; float:right;border:0px; margin-bottom:10px  ; border-radius:30px; background-color:white; border:0px solid black;">
            <p style="color:black; margin-left: 1cm; margin-top:10px"><b>TWO-WAY</b></p><hr>
            <table border="0" width="100%">
                <tr>
                    <td width="70%" align="center">
                        <button class="button" type="button"><g:img dir="images" file="facebook icon.jpg" alt="fb" style="width:50px;height:50px;"/></button>
                        <button class="button" type="button"><g:img dir="images" file="twitter.jpg" alt="twitter" style="width:50px;height:50px"/></button>
                        <button class="button" type="button"><g:img dir="images" file="linkedln.jpg" alt="linkedln" style="width:50px;height:50px"/></button>
                        <button class="button" type="button"><g:img dir="images" file="google icon.jpg" alt="google" style="width:50px;height:50px"/></button>
                    </td>
                    <td width="30%" align="center">
                        <form name="#" url="[controller:'#', action:'#']">
                            <input type="submit" style="width:40%; padding: 7px; background-color:#80a9cb; margin-top:10px" value="PREVIEW">
                        </form>
                        <form name="#" url="[controller:'#', action:'#']">
                            <input type="submit" style="width:70%; padding: 9px; background-color:#80dfff" value="POWERSHARE NOW">
                        </form>
                    </td>
                </tr>
            </table>
        </div>
        <div align="center" style="width:100%; height:50%; float:right;border:0px;  border-radius:30px; background-color:white; border:0px solid black; ">
            <p align="left" style="color:black;margin-left: 1cm; margin-top:10px"><b>POWER-SHARE</b></p><hr>
            <g:form controller="post" action="textPost">
                <textarea style="margin-bottom:20px" cols="107" rows="3" placeholder="What do you have to say?" name="campaignMessage"></textarea><br>
                <input style="background-color:coral ;padding: 10px; border-radius:5px; width: 70px; color:black" type="submit" value="Post">
                <button type="button" data-toggle="modal" data-target="#image" style="background-color:coral ;padding: 10px; border-radius:5px;">Image</button>
                <button type="button" data-toggle="modal" data-target="#video" style="background-color:coral ;padding: 10px; border-radius:5px;">Video</button>
            </g:form>
        </div>
    </div>

    <div class="bod" style="width:30%; height:100%; float:right;border:0px;  border-radius:30px; border:0px solid black; ">
        <div style="width:100%; height:70%;border:0px;  border-radius:30px; background-color:white; border:0px solid black; ">
            <p style="color:black; margin-left: 1cm; margin-top=10px"><b><span style="margin-top:10 px">YOUR CURRENT REACH</span></b></p><hr>
        </div>
        <div style="width:100%; height:30%;border:0px;  border-radius:30px; background-color:white; border:0px solid black; ">
            <p style="color:black; margin-left: 1cm; margin-top:10px"><b>Preview</b></p><hr>
        </div>
    </div>
</div>
</body>
</html>

<div class="resetmodal">
    <!-- Trigger the modal with a button -->

    <!-- Modal -->
    <div class="modal fade" id="image" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" align="center">
                    <button type="button" class="close" data-dismiss="modal" style="width: 4%">&times;</button>
                    <h2 class="modal-title">Upload Image</h2>
                </div>
                <div class="modal-body" align="center">
                    <g:form controller="post" action="imagePost" enctype='multipart/form-data'>
                        <input type="file" name="fileupload" required multiple="multiple" accept="image/*"/><br>
                        <input style="padding:10px; width:30%" type="submit" value="post">
                    </g:form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="width: 10%;padding: 2px">Close</button>
                </div>
            </div>

        </div>
    </div>

</div>

<div class="resetmodal">
    <!-- Trigger the modal with a button -->

    <!-- Modal -->
    <div class="modal fade" id="video" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" align="center">
                    <button type="button" class="close" data-dismiss="modal" style="width: 4%">&times;</button>
                    <h2 class="modal-title">Upload Video</h2>
                </div>
                <div class="modal-body" align="center">
                    <g:form controller="post" action="videoPost" enctype='multipart/form-data'>
                        <input type="file" placeholder="Video...." required name="fileupload" multiple="multiple" accept="video/*"/><br>
                        <input style="padding:10px; width:30%" type="submit" value="post">
                    </g:form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="width: 10%;padding: 2px">Close</button>
                </div>
            </div>

        </div>
    </div>

</div>

