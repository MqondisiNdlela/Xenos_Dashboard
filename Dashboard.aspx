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
                    <a class="nav-link" href="#">Features</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Pricing</a>
                  </li>
                </ul>
                <span runat="server" id="statusArea" class="navbar-text">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
                          <asp:Label runat="server" ID="lblUserType" Text="UserType" />
                      </button>
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
                        <asp:Label ID="lblCounterUserType" Text="" />
                    </a>
                        <hr/>
                  <a class="nav-link" id="v-pills-manage-tab" data-toggle="pill" href="#v-pills-manage" role="tab" aria-controls="v-pills-manage" aria-selected="false">Manage Users</a>
                    
                </div>
              </div>
              <div class="col-9">
                <div class="tab-content" id="TabContent" runat="server">
                  <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                      Profile Content
                  </div>
                  <div class="tab-pane fade show active" id="v-pills-warehouse" role="tabpanel" aria-labelledby="v-pills-warehouse-tab">
                      warehouse {cars}
                  </div>
                  <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab"></div>
                  <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab"></div>
                </div>
              </div>
            </div>
        </div>
    </form>
    <script src="Assets/js/jquery-3.5.1.slim.min.js"></script>
    <script src="Assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>

