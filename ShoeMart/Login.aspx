s<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="ShoeMart.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .auth-wrapper {
            min-height: 70vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 40px 15px;
        }
        .auth-card {
            border: none;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
            overflow: hidden;
            background: #fff;
        }
        .auth-image {
            background: url('https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?auto=format&fit=crop&w=800&q=80') center center/cover no-repeat;
            min-height: 100%;
        }
        .auth-form {
            padding: 50px;
        }
        .form-control:focus {
            border-color: #ff5722;
            box-shadow: 0 0 0 0.2rem rgba(255, 87, 34, 0.25);

        }
        .btn-brand {
            background-color: #ff5722;
            color: white;
            font-weight: bold;
            padding: 12px;
            border-radius: 10px;
            transition: all 0.3s;
        }
        .btn-brand:hover {
            background-color: #e64a19;
            color: white;
            transform: translateY(-2px);
        }
        .brand-text {
            color: #ff5722;
            font-weight: 800;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container auth-wrapper">
        <div class="row w-100 justify-content-center">
            <div class="col-lg-9">
                <div class="row auth-card">
                    <!-- Left Side Image -->
                    <div class="col-md-5 d-none d-md-block p-0">
                        <div class="auth-image"></div>
                    </div>
                    <!-- Right Side Login Form -->
                    <div class="col-md-7 auth-form">
                        <div class="text-center mb-4">
                            <h2 class="fw-bold mb-1">Welcome Back!</h2>
                            <p class="text-muted">Login to your <span class="brand-text">SHOEMART</span> account</p>
                        </div>
                        
                        <div class="form-floating mb-3">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="name@example.com" TextMode="Email"></asp:TextBox>
                            <label for="txtEmail"><i class="fas fa-envelope me-2 text-muted"></i>Email address</label>
                        </div>
                        
                        <div class="form-floating mb-3">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <label for="txtPassword"><i class="fas fa-lock me-2 text-muted"></i>Password</label>
                        </div>

                        <div class="d-flex justify-content-between align-items-center mb-4">
                            <div class="form-check">
                                <asp:CheckBox ID="chkRemember" runat="server" CssClass="form-check-input" />
                                <label class="form-check-label text-muted" for="chkRemember">Remember me</label>
                            </div>
                            <a href="#" class="text-decoration-none" style="color: #ff5722; font-size: 0.9rem;">Forgot Password?</a>
                        </div>
                        
                        <asp:Button ID="btnLogin" runat="server" Text="LOGIN" CssClass="btn btn-brand w-100 mb-3" />
                        
                        <div class="text-center mt-4">
                            <p class="text-muted">Don't have an account? <a href="Register.aspx" class="text-decoration-none fw-bold" style="color: #ff5722;">Register Here</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>