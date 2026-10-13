<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ShoeMart.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        /* Home Page Specific CSS */
        .carousel-item img {
            height: 60vh;
            object-fit: cover;
            filter: brightness(0.7);
        }
        .carousel-caption {
            bottom: 30%;
        }
        .carousel-caption h1 {
            font-size: 3.5rem;
            font-weight: 800;
            text-transform: uppercase;
        }
        .feature-box {
            padding: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            transition: transform 0.3s ease;
        }
        .feature-box:hover {
            transform: translateY(-5px);
        }
        .feature-icon {
            font-size: 2.5rem;
            color: #ff5722;
            margin-bottom: 15px;
        }
        /* Product Card */
        .product-card {
            border: none;
            border-radius: 15px;
            overflow: hidden;
            transition: box-shadow 0.3s ease, transform 0.3s ease;
        }
        .product-card:hover {
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            transform: translateY(-5px);
        }
        .product-img-wrapper {
            position: relative;
            overflow: hidden;
            height: 250px;
        }
        .product-img-wrapper img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }
        .product-card:hover .product-img-wrapper img {
            transform: scale(1.1);
        }
        .badge-sale {
            position: absolute;
            top: 15px;
            left: 15px;
            background: #e74c3c;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 0.8rem;
            font-weight: bold;
            z-index: 2;
        }
        .btn-add-cart {
            background-color: #2b2b2b;
            color: white;
            border: none;
            border-radius: 25px;
            padding: 8px 20px;
            transition: background 0.3s;
        }
        .btn-add-cart:hover {
            background-color: #ff5722;
            color: white;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- Hero Slider Section -->
    <div id="heroCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="2"></button>
        </div>
        <div class="carousel-inner">
            <!-- Slide 1 -->
            <div class="carousel-item active">
                <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=1600&q=80" class="d-block w-100" alt="Running Shoes">
                <div class="carousel-caption d-none d-md-block text-start">
                    <h1>Step Into Greatness</h1>
                    <p class="fs-4">Explore our new collection of premium running shoes.</p>
                    <a href="Products.aspx" class="btn btn-warning btn-lg mt-3 px-5 py-3 rounded-pill fw-bold" style="background-color: #ff5722; border:none; color:white;">Shop Now</a>
                </div>
            </div>
            <!-- Slide 2 -->
            <div class="carousel-item">
                <img src="https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=1600&q=80" class="d-block w-100" alt="Sneakers">
                <div class="carousel-caption d-none d-md-block text-center">
                    <h1>Urban Streetwear</h1>
                    <p class="fs-4">Elevate your everyday style with our latest sneakers.</p>
                    <a href="Products.aspx" class="btn btn-light btn-lg mt-3 px-5 py-3 rounded-pill fw-bold text-dark">View Collection</a>
                </div>
            </div>
            <!-- Slide 3 -->
            <div class="carousel-item">
                <img src="https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?auto=format&fit=crop&w=1600&q=80" class="d-block w-100" alt="Formal Shoes">
                <div class="carousel-caption d-none d-md-block text-end">
                    <h1>Classic Elegance</h1>
                    <p class="fs-4">Premium leather formal shoes for the modern professional.</p>
                    <a href="Products.aspx" class="btn btn-outline-light btn-lg mt-3 px-5 py-3 rounded-pill fw-bold">Discover More</a>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- Features Section -->
    <div class="container mt-5 pt-4">
        <div class="row text-center g-4">
            <div class="col-md-4">
                <div class="feature-box">
                    <i class="fas fa-truck feature-icon"></i>
                    <h5 class="fw-bold">Free Shipping</h5>
                    <p class="text-muted mb-0">On all orders above ₹999</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-box">
                    <i class="fas fa-undo feature-icon"></i>
                    <h5 class="fw-bold">30 Days Return</h5>
                    <p class="text-muted mb-0">No questions asked return policy</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-box">
                    <i class="fas fa-headset feature-icon"></i>
                    <h5 class="fw-bold">24/7 Support</h5>
                    <p class="text-muted mb-0">We are here to help you</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Trending Products Section -->
    <div class="container mt-5 pt-5 mb-5">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2 class="fw-bold">Trending Now</h2>
            <a href="Products.aspx" class="text-decoration-none fw-bold" style="color: #ff5722;">View All <i class="fas fa-arrow-right ms-1"></i></a>
        </div>
        
        <div class="row g-4">
            <!-- Product 1 -->
            <div class="col-md-3 col-sm-6">
                <div class="card product-card h-100">
                    <div class="badge-sale">-20%</div>
                    <div class="product-img-wrapper">
                        <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=500&q=80" alt="Nike Red">
                    </div>
                    <div class="card-body text-center">
                        <p class="text-muted small mb-1">Running</p>
                        <h5 class="card-title fw-bold">Nike Air Zoom</h5>
                        <div class="text-warning mb-2">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
                        </div>
                        <h5 class="fw-bold mb-3">₹4,999 <del class="text-muted small ms-2">₹6,299</del></h5>
                        <asp:LinkButton ID="btnCart1" runat="server" CssClass="btn btn-add-cart w-100"><i class="fas fa-shopping-cart me-2"></i>Add to Cart</asp:LinkButton>
                    </div>
                </div>
            </div>

            <!-- Product 2 -->
            <div class="col-md-3 col-sm-6">
                <div class="card product-card h-100">
                    <div class="product-img-wrapper">
                        <img src="https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?auto=format&fit=crop&w=500&q=80" alt="Vans Classic">
                    </div>
                    <div class="card-body text-center">
                        <p class="text-muted small mb-1">Casual</p>
                        <h5 class="card-title fw-bold">Vans Classic Old Skool</h5>
                        <div class="text-warning mb-2">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>
                        </div>
                        <h5 class="fw-bold mb-3">₹2,499</h5>
                        <asp:LinkButton ID="btnCart2" runat="server" CssClass="btn btn-add-cart w-100"><i class="fas fa-shopping-cart me-2"></i>Add to Cart</asp:LinkButton>
                    </div>
                </div>
            </div>

            <!-- Product 3 -->
            <div class="col-md-3 col-sm-6">
                <div class="card product-card h-100">
                    <div class="badge-sale" style="background:#2ecc71;">NEW</div>
                    <div class="product-img-wrapper">
                        <img src="https://images.unsplash.com/photo-1608231387042-66d1773070a5?auto=format&fit=crop&w=500&q=80" alt="Puma Sports">
                    </div>
                    <div class="card-body text-center">
                        <p class="text-muted small mb-1">Sports</p>
                        <h5 class="card-title fw-bold">Puma RS-X</h5>
                        <div class="text-warning mb-2">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                        </div>
                        <h5 class="fw-bold mb-3">₹5,499</h5>
                        <asp:LinkButton ID="btnCart3" runat="server" CssClass="btn btn-add-cart w-100"><i class="fas fa-shopping-cart me-2"></i>Add to Cart</asp:LinkButton>
                    </div>
                </div>
            </div>

            <!-- Product 4 -->
            <div class="col-md-3 col-sm-6">
                <div class="card product-card h-100">
                    <div class="product-img-wrapper">
                        <img src="https://images.unsplash.com/photo-1549298916-b41d501d3772?auto=format&fit=crop&w=500&q=80" alt="Converse">
                    </div>
                    <div class="card-body text-center">
                        <p class="text-muted small mb-1">Sneakers</p>
                        <h5 class="card-title fw-bold">Converse Chuck Taylor</h5>
                        <div class="text-warning mb-2">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i>
                        </div>
                        <h5 class="fw-bold mb-3">₹3,299</h5>
                        <asp:LinkButton ID="btnCart4" runat="server" CssClass="btn btn-add-cart w-100"><i class="fas fa-shopping-cart me-2"></i>Add to Cart</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>  