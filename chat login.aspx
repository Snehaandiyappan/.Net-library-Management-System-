<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chat login.aspx.cs" Inherits="chat_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
    <style>
     .header {
  background-color: #f7bd10c4;
 height:110px;
  padding: 20px;

}
     .footer {
  background-color: #f7bd10c4;
  text-align: center;
  padding: 10px;
}
     .d{
font-family: "Comic Sans MS", cursive, sans-serif;
font-size: 35px;
letter-spacing: 3px;
word-spacing: 2px;
color: #000000;
font-weight: normal;
text-decoration: none solid rgb(68, 68, 68);
font-style: normal;
font-variant: small-caps;
text-transform: capitalize;
     }
     .border{
         border-left: 5px double rgba(164,35,36,0.88);
border-radius: 0px 34px 0px 40px;
     }
    </style>
<body>
    <form id="form1" runat="server">
  
          <div class="header">
          <div class="col-xs-12 col-sm-12 col-sm-offset-0  ">
             
              <div class="col-sm-4 col-xs-3 ">
                  <h1 class="d">Lost And Found</h1>
              </div><br />
                  <div class=" col-sm-3 col-xs-3 " style="font-size:17px">
                      EmailId:
                      <asp:TextBox  ID="txtEmailId" runat="server"></asp:TextBox>
                </div>
                  <div class=" col-sm-3 col-xs-3" style="font-size:16px">
                      Password:
                      <asp:TextBox ID="txtpasswrd" runat="server"></asp:TextBox>

                  </div>
                  <div class=" col-sm-2 col-xs-3 ">
                      <asp:Button ID="btnlogin" runat="server" Text="Login" BackColor="#ffffff"  OnClick="btnlogin_Click"/>
                  </div>
                  </div>
         </div>

        <br /><br /><br />

        <div class="col-xs-12 col-sm-12">
            <div class="col-sm-6 col-xs-6">
                <br /><br /><br />
                <img src="chat1.jpg" alt="LOST AND FOUND"/>
               
            </div>
        
             <div class="col-sm-6 col-xs-6" style="border: 5px groove rgba(255,196,67,0.88);
border-radius: 0px 34px 0px 40px; -webkit-box-shadow: 5px 5px 0px 0px #ffb31a, 10px -17px 4px -17px rgba(255,250,90,0); 
box-shadow: 5px 5px 0px 0px #ffb31a, 10px -17px 4px -17px rgba(255,250,90,0);">
               <div class="col-sm-12 col-xs-12">
                   <br />
                     
                      <div class="col-sm-12 "style="margin-top:3px ">
                <div class="col-sm-4 col-xs-12">
                   <b style="color:black">L & F ID:</b> 
                </div>
                <div class="col-sm-6 col-xs-12">
                    <asp:TextBox ID="txtId" runat="server" MaxLength="50" AutoComplete="off" ReadOnly="false" CssClass="form-control"></asp:TextBox>
                
                </div>
            </div>

                      <div class="col-sm-12 "style="margin-top:3px ">
                <div class="col-sm-4 col-xs-12">
                   <b style="color:black">Name:</b> 
                </div>
                <div class="col-sm-6 col-xs-12">
                    <asp:TextBox ID="txtName" runat="server" MaxLength="50" AutoComplete="off" ReadOnly="false" CssClass="form-control"></asp:TextBox>
                    
                </div>
            </div>

                       <div class="col-sm-12 "style="margin-top:3px ">
                <div class="col-sm-4 col-xs-12">
                   <b style="color:black">Age:</b> 
                </div>
                <div class="col-sm-6 col-xs-12">
                    <asp:TextBox ID="txtAge" runat="server" MaxLength="50" AutoComplete="off" ReadOnly="false" CssClass="form-control"></asp:TextBox>
                    
                </div>
            </div>
                       <div class="col-sm-12 "style="margin-top:3px ">
                <div class="col-sm-4 col-xs-12">
                   <b style="color:black">EmailId:</b> 
                </div>
                <div class="col-sm-6 col-xs-12">
                    <asp:TextBox ID="txtemail" runat="server" MaxLength="50" AutoComplete="off" ReadOnly="false" CssClass="form-control"></asp:TextBox>
                    
                </div>
            </div>
                       <div class="col-sm-12 "style="margin-top:3px ">
                <div class="col-sm-4 col-xs-12">
                   <b style="color:black">Password:</b> 
                </div>
                <div class="col-sm-6 col-xs-12">
                    <asp:TextBox ID="txtPass" runat="server" MaxLength="50" AutoComplete="off" ReadOnly="false" CssClass="form-control"></asp:TextBox>
                    
                </div>
            </div>
                       <div class="col-sm-12 "style="margin-top:3px ">
                <div class="col-sm-4 col-xs-12">
                   <b style="color:black">Gender:</b> 
                </div>
                <div class="col-sm-6 col-xs-12">
                    <asp:DropDownList ID="ddlgender" runat="server"  CssClass="form-control">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    
                </div>
            </div>

                    <div class="col-sm-12 "style="margin-top:3px ">
                <div class="col-sm-4 col-xs-12">
                   <b style="color:black">DOB:</b> 
                </div>
                <div class="col-sm-6 col-xs-12">
                    <asp:TextBox ID="txtdob" runat="server" MaxLength="50" AutoComplete="off" ReadOnly="false" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    
                </div>
            </div>
                     <div class="col-sm-12 "style="margin-top:3px ">
                <div class="col-sm-4 col-xs-12">
                   <b style="color:black">Profile pic:</b> 
                </div>
                <div class="col-sm-6 col-xs-12">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                    </div>
            </div>

                    <div class="col-sm-12 "style="margin-top:3px ">
                <div class="col-sm-4 col-xs-12">
                   <b style="color:black">About Me:</b> 
                </div>
                <div class="col-sm-6 col-xs-12">
                    <asp:TextBox ID="txtabout" runat="server" MaxLength="50" AutoComplete="off" ReadOnly="false" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>  <br />
                    
                </div>
            </div>
                 
                   <div class="col-sm-12" style="margin-top:3px">
                       <div class ="col-sm-7 col-xs-12"></div>
                       <div class="col-sm-5 col-xs-12" >
                   <asp:Button ID="btnsignin" runat="server" Text="Sign In" BackColor="#ffeb3b" OnClick="btnsignin_Click" />

                   <asp:Button ID="btnreset" runat="server" Text="Reset" BackColor="#f95826" OnClick="btnreset_Click"/>
</div>
                   </div>
                
                
               </div>

            </div>
                </div>
      
        <div class="col-sm-12 col-xs-12">
            <div class="col-xs-7 col-sm-12">
               <img src="c.jpg" alt="Let's chat" width="500px"/>
</div></div>
  
        
        
 
    </form>
     
</body>
</html>
