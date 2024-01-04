<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProfileAdmin.aspx.cs" Inherits="HF.ProfileAdmin" %>

<%@ Register Src="~/LoginStatus.ascx" TagPrefix="uc1" TagName="LoginStatus" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="outside">
        <div class="container">
            <div class="tab">
                <asp:Button ID="btnProfile" runat="server" Text="Profile" CssClass="btnTab" OnClick="btnProfile_Click" PostBackUrl="~/ProfileAdmin.aspx" />
                <asp:Button ID="btnMCourses" runat="server" Text="Manage Course" CssClass="btnTab" PostBackUrl="~/ManageCourse.aspx" OnClick="btnMCourses_Click" />
                <asp:Button ID="btnMStaff" runat="server" Text="Manage Staff" CssClass="btnTab" PostBackUrl="~/ManageStaff.aspx" />
                <asp:Button ID="btnMStudent" runat="server" Text="Manage Student" CssClass="btnTab" PostBackUrl="~/ManageStud.aspx" />
                <asp:Button ID="btnDashboard" runat="server" Text="Edit Profile" CssClass="btnTab" PostBackUrl="~/EditAdmin.aspx" />
            </div>

            <div class="tabcontent">
                <div id="pcontent" runat="server">
                    <table>
                        <tr>
                            <td>
                                <h2>Profile</h2>
                                <br />
                                <br />
                                <asp:Image ID="Image2" runat="server" CssClass="image" ImageUrl="~/ImageFolder/Admin.jpg" />
                                <br />
                                <br />
                            </td>
                            <td>
                                <asp:Label ID="lblAdmin" runat="server" Text="Admin ID : "></asp:Label> <asp:Label ID="lblAdminId" runat="server" Text="getAdminId"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="lblAdminN" runat="server" Text="Admin Name : "></asp:Label><asp:Label ID="lblAdminName" runat="server" Text="getAdminName"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="lblC" runat="server" Text=" Contact No : "></asp:Label><asp:Label ID="lblContact" runat="server" Text="getContact"></asp:Label>
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>

        </div>

    </div>

     <div>
         <uc1:LoginStatus runat="server" ID="LoginStatus" />
         <br />
     </div>


    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        .outside {
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            border-radius: 25px;
            margin-top: 100px;
            margin-bottom: 30px;
            margin-left: 10px;
            margin-right: 10px;
            color: #E5DDE8;
            font-size: 15pt;
            font-weight: 500;
            background-color: #6B9B90;
            width: 700px;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            padding: 30px;
            position: relative;
        }

        .tab {
            width: 100%;
            display: flex;
            justify-content: space-around;
            align-items: center;
            border-bottom: 2px solid rgba(229, 229, 229);
        }

        .image {
            height: 150px;
            width: 150px;
        }

        #pcontent {
            text-align: left;
            margin-left: 30px;
            padding-bottom: 30px;
        }

        .tab .btnTab {
            font-size: 13pt;
            font-weight: 500;
            color: #E5DDE8;
            background-color: #6B9B90;
            border: none;
            padding: 15px;
            cursor: pointer;
        }

        .tab .btnTab:hover {
            background-color: #E5DDE8;
            color: #6B9B90;
        }

        .tab .btnTab:active {
            background-color: #E5DDE8;
            color: #6B9B90;
        }

        .tabcontent {
            padding: 20px;
        }

        .buttons {
            text-align: center;
            left: 50%;
            transform: translateX(-50%);
            margin-bottom: 30px;
        }

        .container .button1 {
            background-color: transparent;
            border: 2px solid #6B9B90;
            outline: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 1em;
            color: #6B9B90;
            font-weight: 500;
            transition: 0.5s;
            height: 49px;
            width: 210px;
        }

        .container .button2 {
            background-color: #6B9B90;
            border: 2px solid white;
            outline: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 1em;
            color: #fff;
            font-weight: 500;
            transition: 0.5s;
            height: 49px;
            width: 117px;
            margin-left: 15px;
        }

        .container .button1:hover {
            background: #6B9B90;
            color: #fff;
        }

        .container .button2:hover {
            background: #E5DDE8;
            color: #6B9B90;
            border-color: #6B9B90;
        }
    </style>

</asp:Content>


