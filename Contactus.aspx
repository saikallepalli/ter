<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="RTW_Webpage_Contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   

  <link rel="shortcut icon" href="assets/images/logo-121x65.png" type="image/x-icon"/>
 
  
  
  <title>Orient BlackSwan</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons2/mobirise2.css"/>
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
 
    <link rel="stylesheet" href="assets/bootstrap/css/animate.css"/>

  <link rel="stylesheet" href="assets/dropdown/css/style.css"/>
  <link rel="stylesheet" href="assets/socicon/css/styles.css"/>
  <link rel="stylesheet" href="assets/theme/css/style.css"/>
 
    <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css"/>
  
   <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap-3.4.0.min.js"></script>  
        
    
   
</head>
<body>
    <form id="form1" runat="server" >
         <section data-bs-version="5.1" class="menu cid-s48OLK6784">
    
    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="http://www.orientblackswan.com">
                        <img src="assets/images/logo-121x65.jpg" alt="Orient Blackswan" style="height: 3.8rem;">
                    </a>
                </span>
                
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-bs-toggle="collapse" data-target="#navbarSupportedContent" data-bs-target="#navbarSupportedContent" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <div class="hamburger">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true"><li class="nav-item"><a class="nav-link link text-black display-4" href="index.html#header12-13">HOME</a></li>
                    <li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="index.html#video4-o">VIDEO</a></li>
					<li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="index.html#content5-p">KEY FEATURES</a></li>
					<li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="index.html#content5-t">BENEFITS</a></li>
				<li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="index.html#content5-c">COURSEWARE</a></li>
					<li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="contactus.aspx">CONTACT FOR DEMO</a></li></ul>
                
                
            </div>
        </div>
    </nav>

</section>
        <section class="form5 cid-sOuroDlDT8">
    
    
    <div class="container wow fadeInDown">
        <div class="mbr-section-head">
            <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2">
                <strong>Contact us</strong></h3>
            
        </div>
        <div class="row justify-content-center mt-4">
            <div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
               
                        <div class="ccol-12 form-group mb-3" data-for="url">
                            <asp:TextBox ID="Firstname" runat="server" placeholder="First Name" class="form-control"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="publish" runat="server" ControlToValidate="Firstname" ForeColor="Red" Display="Dynamic">Please First Name</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ValidationGroup="publish" runat="server" ControlToValidate="Firstname" Display="Dynamic" ErrorMessage="Allows alphabets with spaces" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-12 form-group mb-3" data-for="url">
                            <asp:TextBox ID="Lastname" runat="server" placeholder="Last Name" class="form-control"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="publish" runat="server" ControlToValidate="Lastname" ForeColor="Red" Display="Dynamic">Please Last Name</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="publish" runat="server" ControlToValidate="Lastname" Display="Dynamic" ErrorMessage="Allows alphabets with spaces" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-12 form-group mb-3" data-for="url">
                           <asp:TextBox ID="phone" runat="server" placeholder="Phone" class="form-control"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ValidationGroup="publish" ControlToValidate="phone" Display="Dynamic" ErrorMessage="Please Enter Telephone/Mobile No" ForeColor="Red"></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ValidationGroup="publish" ControlToValidate="phone" Display="Dynamic" ErrorMessage="Allows only numbers and hypen" ForeColor="Red" ValidationExpression="^[0-9,-]*$"></asp:RegularExpressionValidator> 
                        </div>
                        <div class="col-12 form-group mb-3" data-for="url">
                           <asp:TextBox ID="school" runat="server" placeholder="School Name" class="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="publish"  runat="server" ControlToValidate="school" ForeColor="Red" Display="Dynamic">Please Enter School</asp:RequiredFieldValidator>
                        </div>
                        <div class="col-12 form-group mb-3" data-for="url">
                            <asp:TextBox ID="desg" runat="server" placeholder="Designation" class="form-control"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ValidationGroup="publish" runat="server" ControlToValidate="desg" ForeColor="Red" Display="Dynamic">Please Enter Designation</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ValidationGroup="publish" runat="server" ControlToValidate="desg" Display="Dynamic" ErrorMessage="Allows alphabets with spaces" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-12 form-group mb-3" data-for="textarea">
                            <asp:TextBox ID="message" runat="server" placeholder="Message" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 align-center mbr-section-btn">
                            
                             <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-primary display-4" OnClick="btnSubmit_Click" ValidationGroup="publish" CausesValidation="true"></asp:Button>
                        </div>
                    </div>
               </div>
    </div>
</section>
</form>   
</body>
</html>
