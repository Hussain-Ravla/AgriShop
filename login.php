<?php
if(isset($_POST['btncreate']))
{
    header("Location: registration.php");
}


include("header.php");



?>
<!-- Contact -->

<div class="contact" id="contact">
    <br/><br/>
<div id="particles-js2"></div>
<div class="contact-top">
<p class="sub-text">The farm is part of me.</p>

    <h3 class="title-w3 ">Login</h3>
    <div class="row">
        <div class="col-md-6">
        <form method="post" class="contact_form slideanim">

            <div class="message">
                <div class="col-md-12  grid_6 c1">
                    
                    <input type="text" name="txtemail" placeholder="Email">
                    <input type="password" name="txtpwd" placeholder="Password">
                    <div class="submit-w3l">
                        <input type="submit" value="LOGIN" name="btnlogin">
                        <input type="submit" value="CREATE AN ACCOUNT" name="btncreate">
                    </div>
                </div>

                
                <div class="clearfix"></div>
            </div>


        </form>
        </div>
        <div class="col-md-6">
                <img src="images/cnt1.gif" style="width:100%;" />
        </div>
    </div>


        
</div>
</div>
<!-- //Contact -->


<?php
include("footer.php");
?>