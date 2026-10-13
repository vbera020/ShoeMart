<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="ShoeMart.Register" %>

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
            background: url('https://images.unsplash.com/photo-1549298916-b41d501d3772?auto=format&fit=crop&w=800&q=80') center center/cover no-repeat;
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
            background-color: #2b2b2b;
            color: white;
            font-weight: bold;
            padding: 12px;
            border-radius: 10px;
            transition: all 0.3s;
        }
        .btn-brand:hover {
            background-color: #ff5722;
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
                <div class="row auth-card flex-row-reverse">
                    <!-- Right Side Image (Flipped for Register) -->
                    <div class="col-md-5 d-none d-md-block p-0">
                        <div class="auth-image"></div>
                    </div>
                    <!-- Left Side Register Form -->
                    <div class="col-md-7 auth-form">
                        <div class="text-center mb-4">
                            <h2 class="fw-bold mb-1">Create Account</h2>
                            <p class="text-muted">Join <span class="brand-text">SHOEMART</span> today!</p>
                        </div>
                        
                        <div class="form-floating mb-3">
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
                            <label for="txtName"><i class="fas fa-user me-2 text-muted"></i>Full Name</label>
                        </div>

                        <div class="form-floating mb-3">
                            <asp:TextBox ID="txtRegEmail" runat="server" CssClass="form-control" placeholder="name@example.com" TextMode="Email"></asp:TextBox>
                            <label for="txtRegEmail"><i class="fas fa-envelope me-2 text-muted"></i>Email address</label>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-floating mb-3">
                                    <asp:TextBox ID="txtRegPassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <label for="txtRegPassword"><i class="fas fa-lock me-2 text-muted"></i>Password</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating mb-4">
                                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                    <label for="txtConfirmPassword"><i class="fas fa-check-circle me-2 text-muted"></i>Confirm</label>
                                </div>
                            </div>
                        </div>
                        
                        <asp:Button ID="btnRegister" runat="server" Text="REGISTER NOW" CssClass="btn btn-brand w-100 mb-3" OnClick="btnRegister_Click1" />

                        <asp:Label ID="lblout" runat="server" Text="Label" Visible="False"></asp:Label>
                        
                        <div class="text-center mt-3">
                            <p class="text-muted">Already have an account? <a href="Login.aspx" class="text-decoration-none fw-bold" style="color: #ff5722;">Login Here</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>