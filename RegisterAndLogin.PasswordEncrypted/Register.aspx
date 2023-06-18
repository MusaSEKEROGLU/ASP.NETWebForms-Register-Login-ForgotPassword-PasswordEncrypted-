<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RegisterAndLogin.PasswordEncrypted.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
       <div class="container py-4">  
                <div class="col-md-5 offset-md-3">  
                    <div class="card card-outline-secondary rounded-0">  
                        <div class="card-header bg-success rounded-0">  
                            <h4 class="text-center text-uppercase text-white">Müşteri Kayıt</h4>  
                        </div>  
                        <div class="card-body">  
                            <div class="form-group bottom">  
                                <label>Adı-Soyadı</label>  
                                <div class="input-group">  
                                    <div class="input-group-prepend">  
                                        <div class="input-group-text"><i class="fa fa-user"></i></div>  
                                    </div>  
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>  
                                </div>  
                                <asp:RequiredFieldValidator ID="rfvName" ControlToValidate="txtName" CssClass="text-danger" runat="server" ErrorMessage="Lütfen ad-soyad giriniz."></asp:RequiredFieldValidator>  
                            </div>  
                            <div class="form-group bottom">  
                                <label>Email Adres</label>  
                                <div class="input-group">  
                                    <div class="input-group-prepend">  
                                        <div class="input-group-text"><i class="fa fa-envelope"></i></div>  
                                    </div>  
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>  
                                </div>  
                                <asp:RequiredFieldValidator ID="rfvEmail" Display="Dynamic" ControlToValidate="txtEmail" CssClass="text-danger" runat="server" ErrorMessage="Geçerli e-posta giriniz."></asp:RequiredFieldValidator>  
                                <asp:RegularExpressionValidator ID="revEmail" ControlToValidate="txtEmail" CssClass="text-danger" runat="server" ErrorMessage="Geçerli e-posta giriniz." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
                            </div>  
                            <div class="form-group bottom">  
                                <label>Telefon Numarası</label>  
                                <div class="input-group">  
                                    <div class="input-group-prepend">  
                                        <div class="input-group-text"><i class="fa fa-phone"></i></div>  
                                    </div>  
                                    <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control"></asp:TextBox>  
                                </div>  
                                <asp:RequiredFieldValidator ID="rfvPhoneNumber" Display="Dynamic" ControlToValidate="txtPhoneNumber" CssClass="text-danger" runat="server" ErrorMessage="Lütfen telefon numaranızı giriniz."></asp:RequiredFieldValidator>  
                                <asp:RegularExpressionValidator ID="revPhoneNumber" ControlToValidate="txtPhoneNumber" CssClass="text-danger" runat="server" ErrorMessage="Enter valid phone number" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>  
                            </div>  
                            <div class="form-group bottom">  
                                <label>Şifre</label>  
                                <div class="input-group">  
                                    <div class="input-group-prepend">  
                                        <div class="input-group-text"><i class="fa fa-lock"></i></div>  
                                    </div>  
                                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>  
                                </div>  
                                <asp:RequiredFieldValidator ID="rfvPassword" ControlToValidate="txtPassword" CssClass="text-danger" runat="server" ErrorMessage="Lütfen şifre belirleyiniz."></asp:RequiredFieldValidator>  
                            </div>  
                            <div class="form-group bottom">  
                                <label>Şifre Onay</label>  
                                <div class="input-group">  
                                    <div class="input-group-prepend">  
                                        <div class="input-group-text"><i class="fa fa-lock"></i></div>  
                                    </div>  
                                    <asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>  
                                </div>  
                                <asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtPassword" Display="Dynamic" ControlToValidate="txtConfirmPassword" CssClass="text-danger" runat="server" ErrorMessage="Parolanız eşleşmiyor.Kontrol ediniz."></asp:CompareValidator>  
                                <asp:RequiredFieldValidator ID="rfvConfirmPassword" ControlToValidate="txtConfirmPassword" CssClass="text-danger" runat="server" ErrorMessage="Parolanız eşleşmiyor.Kontrol ediniz."></asp:RequiredFieldValidator>  
                            </div>  
                            <div class="form-group">  
                                <asp:Button ID="btnRegiter" CssClass="btn btn-success rounded-0 btn-block" runat="server" Text="Kayıt Ol" OnClick="btnRegiter_Click" />  
                            </div>  
                            <asp:Label ID="lblMessage" runat="server"></asp:Label>  
                        </div>  
                    </div>  
                </div>  
            </div>  
    </form>
</body>
</html>
