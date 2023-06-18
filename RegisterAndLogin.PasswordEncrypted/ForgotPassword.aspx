<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="RegisterAndLogin.PasswordEncrypted.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="scripts/jquery-3.3.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>

</head>
<body>

    <form id="form1" runat="server">
        <div class="container py-4">
            <div class="col-md-5 offset-md-3">
                <div class="card card-outline-secondary rounded-0">
                    <div class="card-header bg-warning rounded-0">
                        <h4 class="text-center text-uppercase text-white">Şifremi Unuttum</h4>
                    </div>
                       <div class="card-header bg-secondary rounded-0">
                        <h5 class="text-center text-uppercase text-white">Mail Gönder</h5>
                    </div>
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
                    <br />
                    <asp:Label ID="lblMessage" runat="server" />
                    <br />
                    <asp:Button CssClass="btn-success" Text="Gönder" runat="server" OnClick="Unnamed_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>

