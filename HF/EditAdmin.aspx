<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditAdmin.aspx.cs" Inherits="HF.EditAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="outside">
        <div class="container">
            <div class="tab">
                <asp:Button ID="btnProfile" runat="server" Text="Profile" CssClass="btnTab" PostBackUrl="~/Admin.aspx" />
                <asp:Button ID="btnMCourses" runat="server" Text="Manage Course" CssClass="btnTab" PostBackUrl="~/ManageCourse.aspx" />
                <asp:Button ID="btnMStaff" runat="server" Text="Manage Staff" CssClass="btnTab" PostBackUrl="~/Staff.aspx" />
                <asp:Button ID="btnMStudent" runat="server" Text="Manage Student" CssClass="btnTab" PostBackUrl="~/ManageStudent.aspx" />
                <asp:Button ID="btnEditP" runat="server" Text="Edit Profile" CssClass="btnTab" PostBackUrl="~/EditAdmin.aspx" OnClick="btnEditP_Click" />
            </div>
            <div class="tabcontent">
                <div id="pcontent" runat="server">
                    <table>
                        <tr>
                            <td colspan="2" class="content1">
                                <h2>Edit Profile</h2>
                                <br />
                                <br />
                                <asp:Image ID="Image2" runat="server" CssClass="image" ImageUrl="~/Image/admin.png" />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="content1">
                                <asp:Label ID="lblAdmin" runat="server" Text="Admin ID : "></asp:Label>
                            </td>
                            <td class="datacol">
                                <asp:Label ID="lblAdminId" runat="server" Text="getAdminId"></asp:Label>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="content1">
                                <asp:Label ID="lblAdminN" runat="server" Text="Admin Name : "></asp:Label>
                            </td>
                            <td class="datacol">
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Please Enter The Name" ForeColor="Red" CssClass="valid" ValidationGroup="EditProfile"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="vldSName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Only Characters" ForeColor="red" CssClass="valid" ValidationExpression="^[A-Za-z\s]+$" ValidationGroup="EditProfile">Only Characters</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="content1">
                                <asp:Label ID="lblC" runat="server" Text=" Contact No : "></asp:Label>
                            </td>
                            <td class="datacol">
                                <asp:TextBox ID="txtCont" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCont" ErrorMessage="Please Enter The Contact No" ForeColor="Red" CssClass="valid" ValidationGroup="EditProfile"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="vldPContact" runat="server" ControlToValidate="txtCont" Display="Dynamic" ErrorMessage="Invalid Number" ForeColor="red" CssClass="valid" ValidationGroup="EditProfile" ValidationExpression="^01\d{8,9}$">Invalid Format (0123456789) </asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table class="buttable">
                        <tr>
                            <td class="but1">
                                <asp:Button ID="Addbutt" runat="server" Text="Save" CssClass="button-style" OnClick="Addbutt_Click" ValidationGroup="EditProfile" />
                            </td>
                            <td class="but2">
                                <asp:Button ID="clearbutt" runat="server" Text="Clear" CssClass="button-style" OnClick="clearbutt_Click1" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>            
    

    
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Poppins', sans-serif;
        }

        .outside {
            background-color: white;
            display:flex;
            justify-content:center;
            align-items:center;
      
        }

        .buttable {
            display: inline-block;
        }

        .button-style {
            background-color: #006666;
            color: #ffffff;
            border: 2px solid #006666;
            border-radius: 12px;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 13pt;
        }

            .button-style:hover {
                background-color: #ffffff;
                color: #006666;
            }

        .valid {
            font-size: 10pt;
        }

        .datacol {
            font-size: 14pt;
            width: 250pt;
        }
        
        .container{
            border-radius:25px;
            margin-top:100px;
            margin-bottom:30px;
            margin-left:10px;
            margin-right:10px;
            color:#E5DDE8;
            font-size:15pt;
            font-weight:500;
            background-color:#6B9B90;
            height:50%;
            width:700px;
            box-shadow:0 2px 16px rgba(0,0,0,.1);
            padding:30px;
        }

        .but1 {
            width: 50pt;
        }


        .but2 {
            width: 50pt;
        }

        .tab{
            width:100%;
            display:flex;
            justify-content:space-around;
            align-items:center;
            border-bottom:2px solid rgba(229,229,229);
        }

        .image{
            height:150px;
            width:150px;
        }

        .content{
            text-align:left;
            margin-left:30px;
            padding-bottom:30px;
        }

        .content h2{
            padding-top:30px;
        }

        .tab .btnTab{
            font-size:13pt;
            font-weight:500;
            color: #E5DDE8;
            background-color:#6B9B90;
            border:none;
            padding:15px;
            cursor:pointer;
        }

        #pcontent {
            text-align: left;
            margin-left: 30%;
            padding-bottom: 30px;
        }

        .tab .btnTab:hover{
            background-color:#E5DDE8;
            color:#6B9B90;
        }

        .tab .btnTab:active{
            background-color:#E5DDE8;
            color:#6B9B90;
        }

        .tabcontent {
            padding: 20px;
        }

        .content1 {
            width: 40%;
        }

        .container .button1{
            background-color:transparent;
            border: 2px solid #6B9B90;
            outline:none;
            border-radius:6px;
            cursor:pointer;
            font-size:1em;
            color:#6B9B90;
            font-weight:500;
            transition:0.5s;
            position: absolute;
            left: 50%;
            -ms-transform: translate(-27%, -50%);
            transform: translate(-27%, -50%);
            margin-top:70px;
            margin-bottom:50px;
            height: 49px;
            width: 210px;
        }

        .container .button2{
            background-color:#6B9B90;
            border: 2px solid #6B9B90;
            outline:none;
            border-radius:6px;
            cursor:pointer;
            font-size:1em;
            color:#fff;
            font-weight:500;
            transition:0.5s;
            position: absolute;
            left: 50%;
            -ms-transform: translate(150%, -50%);
            transform: translate(150%, -50%);
            margin-top:70px;
            margin-bottom:50px;
            height: 49px;
            width: 117px;
        }

        .container .button1:hover{
            background:#6B9B90;
            color:#fff;
        }

         .container .button2:hover{
            background:#E5DDE8;
            color:#6B9B90;
            border-color:#6B9B90;
         }
         
        </style>
    
</asp:Content>
