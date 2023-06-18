<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RegisterAndLogin.PasswordEncrypted.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="Content/bootstrap.min.css" rel="stylesheet" />  
    <script src="scripts/jquery-3.3.1.min.js"></script>  
    <script src="scripts/bootstrap.min.js"></script>  
    <style>  
        .bottom {  
            margin-bottom: 5px !important;  
        }  
    </style>

</head>               
<body>
    <form id="form1" runat="server">
      <div class="container py-4">  
            <div class="col-md-5 offset-md-3">  
                <div class="card card-outline-secondary rounded-0">  
                    <div class="card-header bg-success rounded-0">  
                        <h4 class="text-center text-uppercase text-white">Giriş Yap</h4>  
                    </div>  
                    <div class="card-body">  
                        <div class="form-group bottom">  
                            <label>Kullanıcı Adı(Email)</label>  
                            <div class="input-group">  
                                <div class="input-group-prepend">  
                                    <div class="input-group-text"><i class="fa fa-envelope"></i></div>  
                                </div>  
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>  
                            </div>  
                            <asp:RequiredFieldValidator ID="rfvEmail" Display="Dynamic" ControlToValidate="txtEmail" CssClass="text-danger" runat="server" ErrorMessage="Lütfen Email adresiniz giriniz."></asp:RequiredFieldValidator>  
                            <asp:RegularExpressionValidator ID="revEmail" ControlToValidate="txtEmail" CssClass="text-danger" runat="server" ErrorMessage="Lütfen Email adresiniz giriniz." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
                        </div>  
                        <div class="form-group bottom">  
                            <label>Şifre</label>  
                            <div class="input-group">  
                                <div class="input-group-prepend">  
                                    <div class="input-group-text"><i class="fa fa-lock"></i></div>  
                                </div>  
                                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>  
                            </div>  
                            <asp:RequiredFieldValidator ID="rfvPassword" ControlToValidate="txtPassword" CssClass="text-danger" runat="server" ErrorMessage="Lütfen şifrenizi giriniz."></asp:RequiredFieldValidator>  
                        </div>  
                        <div class="form-group">  
                            <asp:Button ID="btnLogin" CssClass="btn btn-success rounded-0 btn-block" runat="server" Text="Login" OnClick="btnLogin_Click" />  
                        </div>  
                        <div class="form-group text-center">  
                            <asp:HyperLink ID="linkRegistration" NavigateUrl="Register.aspx" CssClass="text-success btn-link" runat="server">Yeni Müşteri</asp:HyperLink>  
                            <asp:HyperLink ID="linkForgotPassword" NavigateUrl="ForgotPassword.aspx" CssClass="text-primary btn-link"  runat="server">Şifremi unuttum</asp:HyperLink>  
                        </div>  
                        <div class="text-center">  
                             <asp:Label ID="lblMessage" CssClass="text-center" runat="server"></asp:Label>  
                        </div>                        
                    </div>  
                </div>  
            </div>  
        </div>
    </form>
</body>
</html>
