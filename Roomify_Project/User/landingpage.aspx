<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="landingpage.aspx.cs" Inherits="roomify_project.User.landingpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <!-- Favicon -->
    <link rel="icon" href="../User%20css/images/fav.ico" type="image/x-icon" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css" />
    <!-- Custom CSS -->
    <link href="../User%20css/styles.css" rel="stylesheet" />
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  
     <!-- Include Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />


</head>
<body>
    <form id="form1" runat="server">
        

        <!-- Navbar  code -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top shadow" style="left: 0px; top: 0">
      <div class="container">
          <a class="navbar-brand d-flex align-items-center justify-content-center" href="index.html">
              <img src="../User%20css/images/logo.png" alt="Roomify Logo" width="40" height="40" class="me-2"/>
              <span class="fs-4 fw-bold" style="color: #ffc107; font-family: 'Arial', sans-serif;">Roomify</span>
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
              <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                      <a class="nav-link text-uppercase" href="index.html">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link text-uppercase" href="index.html">About Us</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-uppercase" href="index.html">Contact Us</a>
              </li>
                  <li class="nav-item">
                      <a class="nav-link text-uppercase" href="account.html">My Account</a>
                  </li>
              </ul>
              <div class="d-flex" action="search.html" method="get">
                  <input class="form-control me-2" type="search" placeholder="Search by locality" aria-label="Search" name="search" />
                  <button class="btn btn-outline-warning me-3" type="submit">Search</button>
              </div>
              <div class="d-flex flex-row me-3">
                <button type="button" class="btn btn-primary me-3" data-bs-toggle="modal" data-bs-target="#LOGINBackdrop">LOGIN</button>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">SIGNUP</button>
            </div>
            
          </div>
      </div>
  </nav>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <!-- sign up Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">SIGN UP</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="mb-2">
                <label class="form-label">Name</label>
                <asp:TextBox ID="name" runat="server" class="form-control"  placeholder="Enter Your name"></asp:TextBox>
              </div>
              <div class="mb-2">
                <label  class="form-label">Email address</label>
                
                  <asp:TextBox ID="email" runat="server" class="form-control"  placeholder="name@example.com"></asp:TextBox>
              </div>
              <div class="mb-2">
                <label  class="form-label">Phone Number</label>
                
                  <asp:TextBox ID="phone" runat="server" class="form-control"  placeholder="Enter your mobail number"></asp:TextBox>
              </div>
              <div class="mb-2">
                <label  class="form-label">Password</label>
                
                  <asp:TextBox ID="password" runat="server" class="form-control"  placeholder="Enter your password"></asp:TextBox>
              </div>
              <div class="mb-2">
                <label for="exampleFormControlInput1" class="form-label">Confirm Password</label>
                
                  <asp:TextBox ID="cpassword" runat="server" class="form-control"  placeholder="Confirm password"></asp:TextBox>
              </div>
        </div>
        <div class="modal-footer text-center">
          
            <asp:Button ID="Btn_signup" runat="server" Text="SIGN UP" class="btn btn-primary form-control" OnClick="Btn_signup_Click" />
        </div>
          <div class="w-100 mb-3 text-center">
              <asp:Label ID="msg_box" runat="server"></asp:Label>
          </div>
                  </ContentTemplate>
          </asp:UpdatePanel>
      </div>
    </div>
  </div>


    <!-- Login Modal -->
<div class="modal fade" id="LOGINBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
          <asp:UpdatePanel ID="UpdatePanel2" runat="server">
               <ContentTemplate>
        <div class="modal-header text-center">
          <h1 class="modal-title  fs-5 fw-bold" id="staticBackdropLabel2">LOGIN</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
              <div class="mb-2">
                <label for="exampleFormControlInput1" class="form-label">Email address</label>
                  <asp:TextBox id="loginemail" runat="server" class="form-control" placeholder="name@example.com"></asp:TextBox>
              </div>
              
              <div class="mb-2">
                <label for="exampleFormControlInput1" class="form-label">Password</label>
                  <asp:TextBox ID="loginpassword" runat="server" class="form-control" placeholder="Enter your password"></asp:TextBox><br class="Apple-interchange-newline"> 
              </div> 
             <div class="modal-footer">
     <asp:Button ID="btn_login" runat="server" Text="LOGIN" class="btn btn-primary form-control" OnClick="btn_login_Click" />
            </div>
        </div>
                    <div class="w-100 mb-3 text-center">
                        <asp:Label ID="login_msg" runat="server"></asp:Label>
                        </div>
                    </ContentTemplate>
              </asp:UpdatePanel>
      </div>
    </div>
  </div>

    <!-- Carousel Section -->
  
    <div id="roomifyCarousel" class="carousel slide mt-4" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#roomifyCarousel" data-bs-slide-to="0" class="active" aria-current="true"></button>
            <button type="button" data-bs-target="#roomifyCarousel" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#roomifyCarousel" data-bs-slide-to="2"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../User%20css/images/slider1.jpg" class="d-block w-100" alt="Cozy Room" style="height: 500px; object-fit: cover;"/>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Cozy and Comfortable Rooms</h5>
                    <p>Perfect for a relaxing getaway.</p>
                </div>
            </div>
            <div class="carousel-item">
               <img src="../User%20css/images/slider2.jpg" class="d-block w-100" alt="Luxury Suite" style="height: 500px; object-fit: cover;"/>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Luxury Suites</h5>
                    <p>Experience ultimate luxury and comfort.</p>
                </div>
            </div>
            <div class="carousel-item">
               <img src="../User%20css/images/slider3.jpg" class="d-block w-100" alt="Family Suite" style="height: 500px; object-fit: cover;"/>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Family-Friendly Rooms</h5>
                    <p>Space and amenities for the entire family.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#roomifyCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#roomifyCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- Main Content Area -->
    <div class="container mt-5" >
        <div class="text-center mb-5">
            <h1>Welcome to Roomify</h1>
            <p class="lead">Find the perfect room for your needs. Whether you're looking for a cozy space or a luxurious apartment, we've got you covered. Start searching now!</p>
        </div>

        <!-- Content Cards -->
        <div class="row g-4">
            <div class="col-md-4">
                <div class="card shadow-sm">
                   <img src="../User%20css/images/room1.jpg" class="card-img-top" alt="Room 1"/>
                    <div class="card-body">
                        <h5 class="card-title">Cozy Room</h5>
                        <p class="card-text">A small and cozy room perfect for solo travelers.</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow-sm">
                    <img src="../User%20css/images/room2.jpg" class="card-img-top" alt="Room 2"/>
                    <div class="card-body">
                        <h5 class="card-title">Luxury Suite</h5>
                        <p class="card-text">A luxurious suite with premium amenities.</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow-sm">
                    <img src="../User%20css/images/room3.jpg" class="card-img-top" alt="Room 3"/>
                    <div class="card-body">
                        <h5 class="card-title">Family Room</h5>
                        <p class="card-text">Spacious room ideal for families.</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow-sm">
                    <img src="../User%20css/images/room4.jpg" class="card-img-top" alt="Room 4"/>
                    <div class="card-body">
                        <h5 class="card-title">Budget Room</h5>
                        <p class="card-text">An affordable option with essential amenities.</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow-sm">
                    <img src="../User%20css/images/room5.jpg" class="card-img-top" alt="Room 5"/>
                    <div class="card-body">
                        <h5 class="card-title">Deluxe Room</h5>
                        <p class="card-text">A deluxe room with modern decor and facilities.</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow-sm">
                    <img src="../User%20css/images/room6.jpg" class="card-img-top" alt="Room 6"/>
                    <div class="card-body">
                        <h5 class="card-title">Penthouse Suite</h5>
                        <p class="card-text">A penthouse suite with breathtaking views.</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
  
<footer class="bg-dark text-white py-5">
  <div class="container">
    <div class="row text-center text-md-start">
      <!-- Location Section -->
      <div class="col-md-4 mb-4">
        <h5 class="text-uppercase">Locations</h5>
        <ul class="list-unstyled">
          <li><i class="fas fa-map-marker-alt me-2"></i>Pune</li>
          <li><i class="fas fa-map-marker-alt me-2"></i>Mumbai</li>
          <li><i class="fas fa-map-marker-alt me-2"></i>Solapur</li>
          <li><i class="fas fa-map-marker-alt me-2"></i>Latur
          </li>
        </ul>
      </div>

      <!-- Quick Links Section -->
      <div class="col-md-4 mb-4">
        <h5 class="text-uppercase">Quick Links</h5>
        <ul class="list-unstyled">
          <li><a href="#" class="text-white text-decoration-none"><i class="fas fa-home me-2"></i>Home</a></li>
          <li><a href="#" class="text-white text-decoration-none"><i class="fas fa-info-circle me-2"></i>About Us</a></li>
          <li><a href="#" class="text-white text-decoration-none"><i class="fas fa-phone me-2"></i>Contact</a></li>
          <li><a href="#" class="text-white text-decoration-none"><i class="fas fa-lock me-2"></i>Privacy Policy</a></li>
        </ul>
      </div>

      <!-- Follow Us Section -->
      <div class="col-md-4 mb-4">
        <h5 class="text-uppercase">Follow Us</h5>
        <ul class="list-unstyled">
          <li><a href="#" class="text-white text-decoration-none"><i class="fab fa-facebook me-2"></i>Facebook</a></li>
          <li><a href="#" class="text-white text-decoration-none"><i class="fab fa-instagram me-2"></i>Instagram</a></li>
          <li><a href="#" class="text-white text-decoration-none"><i class="fab fa-twitter me-2"></i>Twitter</a></li>
          <li><a href="#" class="text-white text-decoration-none"><i class="fab fa-linkedin me-2"></i>LinkedIn</a></li>
        </ul>
      </div>
    </div>
    <!-- Footer Bottom -->
    <div class="text-center mt-4">
      <p class="mb-0">© 2024 Roomify. All Rights Reserved.</p>
    </div>
  </div>
</footer>


    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>



    </form>
</body>
</html>

