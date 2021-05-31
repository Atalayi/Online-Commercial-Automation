<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.Web.Kullanici.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Admin Giriş</title>
    <link href="/Content/dist/css/styles.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="frmLogin" runat="server">
        <body class="bg-primary">
            <div id="layoutAuthentication">
                <div id="layoutAuthentication_content">
                    <main>
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-5">
                                    <div class="card shadow-lg border-0 rounded-lg mt-5">
                                        <div class="card-header ">
                                            <h3 class="text-center font-weight-light my-4">Admin Girişi</h3>
                                        </div>
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress">Email</label><input class="form-control py-4" runat="server" id="inputEmailAddress" required="required" type="email" placeholder="Email adresini giriniz" /></div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputPassword">Şifre</label><input class="form-control py-4" runat="server" id="inputPassword" required="required" type="password" placeholder="Şifrenizi giriniz" /></div>
                                            <%--<div class="form-group">
                                                <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" id="rememberPasswordCheck" type="checkbox" /><label class="custom-control-label" for="rememberPasswordCheck">Şifreyi Hatırla</label></div>
                                            </div>--%>
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary" OnClick="btnLogin_Click" Text="Giriş Yap" />

                                            </div>
                                        </div>
                                        <div class="card-footer text-center">
                                            <div class="small"><a href="/Kullanici/Register.aspx">Bir hesaba mı ihtiyacınız var?  Kaydol!</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
                </div>
                <div id="layoutAuthentication_footer">
                    <footer class="py-4 bg-light mt-auto">
                        <div class="container-fluid">
                            <div class="d-flex align-items-center justify-content-between small">
                                <div class="text-muted">Copyright &copy; 2021</div>
                                <div>
                                    <a href="#">Gizlilik Politikası</a>
                                    &middot;
                                <a href="#">Şartlar &amp; Koşullar</a>
                                </div>
                            </div>
                        </div>
                    </footer>
                </div>
            </div>
            <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
            <script src="/Content/dist/js/scripts.js"></script>
        </body>
    </form>
</body>
</html>
