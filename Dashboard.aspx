<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Xenos_Dashboard.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <link href="Assets/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-white">
              <a class="navbar-brand" href="#">
                  <img src="Assets/images/logo.jpg" width="50" height="60" />
              </a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto">
                  <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Report Error</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Pricing</a>
                  </li>
                </ul>
                <span runat="server" id="statusArea" class="navbar-text">
                      <button class="btn btn-outline-danger my-2 my-sm-0" runat="server" type="submit">
                          Log Out
                      </button>
                </span>
              </div>
            </nav>

            <div class="row">
              <div class="col-3">
                <div class="nav flex-column nav-pills" id="Tab" runat="server" role="tablist" aria-orientation="vertical">
                  <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">
                      Profile
                  </a>
                    <a class="nav-link active" id="v-pills-warehouse-tab" data-toggle="pill" href="#v-pills-warehouse" role="tab" aria-controls="v-pills-warehouse" aria-selected="true">
                        <asp:Label runat="server" ID="lblCounterUserType" Text="Warehouse" />
                    </a>
                        <hr/>
                        <a class="nav-link" id="v-pills-manage-tab" data-toggle="pill" href="#v-pills-manage" role="tab" aria-controls="v-pills-manage" aria-selected="false">
                            Manage Entities
                        </a>
                    
                </div>
              </div>
              <div class="col-9">
                <div class="tab-content" id="TabContent" runat="server">
                  <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                      <!-- Profile -->
                      <div>
                          <h1>My Profile</h1>

                          <!-- Username -->
                          <div class="input-group mb-3">
                              <div class="input-group-prepend">
                                <span class="input-group-text" id="txtEmail">Email</span>
                              </div>
                              <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" runat="server" />
                           </div>
                          <br />

                        <!-- Full Name -->
                          <div class="input-group">
                              <div class="input-group-prepend">
                                <span class="input-group-text">First and last name</span>
                              </div>
                              <input type="text" id="txtFName" aria-label="First name" class="form-control" runat="server"/>
                              <input type="text" id="txtLName" aria-label="Last name" class="form-control" runat="server"/>
                           </div>
                          <br />

                          <!-- Cell Number -->
                          <div class="input-group mb-3">
                              <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">Phone Numbers:</span>
                              </div>
                              <input runat="server" id="txtNumber" type="text" class="form-control" placeholder="012 345 6789" aria-label="Username" aria-describedby="basic-addon1">
                           </div>
                          <br />
                        
                        <!-- Password -->
                          <div class="input-group">
                              <div class="input-group-prepend">
                                <span class="input-group-text">Password and Confirm</span>
                              </div>
                              <input runat="server" type="password" id="txtPwd1" aria-label="First name" class="form-control" />
                              <input runat="server" type="password" id="txtPwd2" aria-label="Last name" class="form-control" />
                           </div>
                          <br />

                          <!-- Address -->
                          <div id="addressSection" runat="server">
                                <h4>Address</h4>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">House Number</span>
                                    </div>
                                    <input runat="server" type="text" id="txtHouseNumber" aria-label="First name" class="form-control" />

                                    <div class="input-group-prepend">
                                        <span class="input-group-text">Street Name</span>
                                    </div>
                                    <input runat="server" type="text" id="txtStreetName" aria-label="First name" class="form-control" />

                                    <div class="input-group-prepend">
                                        <span class="input-group-text">Town</span>
                                    </div>
                                    <select class="custom-select" id="drpdwnTown">
                                        <option selected>Choose Town...</option>
                                        <option value="Vannderbijl">Vanderbijlpark</option>
                                        <option value="Vereeneging">Vereeneging</option>
                                        <option value="Meyerton">Meyerton</option>
                                        <option value="Sasol">SasolBurg</option>
                                    </select>                              
                            </div>
                               <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">Postal Code</span>
                                    </div>
                                    <input runat="server" type="text" id="txtZipCode" aria-label="First name" class="form-control"/>
                               </div>

                         </div>
                      </div>
                  </div>
                  <div class="tab-pane fade show active" id="v-pills-warehouse" role="tabpanel" aria-labelledby="v-pills-warehouse-tab">
                      <!-- Warehouse -->
                      <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                              <li class="nav-item" role="presentation">
                                <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">My Cars</a>
                              </li>
                              <li class="nav-item" role="presentation">
                                <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Xenos Cars</a>
                              </li>
                            </ul>
                            <div class="tab-content" id="pills-tabContent">
                              <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                                  <div runat="server" id="MyCarsTab">
                                      My cars
                                  </div>
                              </div>
                              <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                                  <div runat="server" id="XenosCarsTab">
                                      Xenos cars
                                  </div>
                              </div>
                            </div>
                  </div>
                  <div class="tab-pane fade" id="v-pills-manage" role="tabpanel" aria-labelledby="v-pills-manage-tab">
                      <!-- Management Area -->
                      <h2>Manage Entities</h2>
                      <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                              <li class="nav-item" role="presentation">
                                <a class="nav-link active" id="pills-manageUsers-tab" data-toggle="pill" href="#pills-manageUsers" role="tab" aria-controls="pills-manageUsers" aria-selected="true">Users</a>
                              </li>
                              <li class="nav-item" role="presentation">
                                <a class="nav-link" id="pills-manageVehicles-tab" data-toggle="pill" href="#pills-manageVehicles_" role="tab" aria-controls="pills-manageVehicles_" aria-selected="false">Vehicles</a>
                              </li>
                              <li class="nav-item" role="presentation">
                                <a class="nav-link" id="pills-manageWarehouse-tab" data-toggle="pill" href="#pills-manageWarehouse" role="tab" aria-controls="pills-manageWarehouse" aria-selected="false">Warehouses</a>
                              </li>
                              <li class="nav-item" role="presentation">
                                <a class="nav-link" id="pills-ViewInvoices-tab" data-toggle="pill" href="#pills-viiewInvoices" role="tab" aria-controls="pills-viiewInvoices" aria-selected="false">Invoices</a>
                              </li>
                            </ul>
                            <div class="tab-content" id="pills-tabContent_">
                              <div class="tab-pane fade show active" id="pills-manageUsers" role="tabpanel" aria-labelledby="pills-home-tab">
                                  <div runat="server" id="tabUsers">
                                      My cars
                                  </div>
                              </div>
                              <div class="tab-pane fade" id="pills-manageVehicles_" role="tabpanel" aria-labelledby="pills-profile-tab">
                                  <div runat="server" id="tabVehicles">
                                      Xenos cars
                                  </div>
                              </div>

                              <div class="tab-pane fade" id="pills-manageWarehouse" role="tabpanel" aria-labelledby="pills-profile-tab">
                                  <div runat="server" id="tabWarehouse">
                                      Xenos cars
                                  </div>
                              </div>

                               <div class="tab-pane fade" id="pills-viiewInvoices" role="tabpanel" aria-labelledby="pills-profile-tab">
                                  <div runat="server" id="tabInvoise">
                                      Xenos cars
                                  </div>
                              </div>
                            </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
    </form>
    <script src="Assets/js/jquery-3.5.1.slim.min.js"></script>
    <script src="Assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>

