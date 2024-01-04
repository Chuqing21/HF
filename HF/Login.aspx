<%@ Page Language="C#" MasterPageFile="~/Site1.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HF.Login" %>

<%@ Register Src="~/LoginStatus.ascx" TagPrefix="uc1" TagName="LoginStatus" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="titlelogin">
    <br />
    <asp:Label ID="lblLoginAs" runat="server" Text="Login" Font-Bold="True" Font-Size="35pt" CssClass="logintitle"></asp:Label>

    </div>
    
    <div class="table-container">
        <table class="table" align="center">
        <tr>
            <td class="tablecontent"><asp:ImageButton ID="imgBtnStudent" runat="server" Height="100px" ImageUrl="~/ImageFolder/Student.png" PostBackUrl="~/LoginStudent.aspx" OnClick="imgBtnStudent_Click"/></td>
            <td class="tablecontent"><asp:ImageButton ID="imgBtnTeacher" runat="server" Height="100px" ImageUrl="~/ImageFolder/Teacher.png" PostBackUrl="~/LoginStaff.aspx" OnClick="imgBtnTeacher_Click"/></td>
            <td class="tablecontent"><asp:ImageButton ID="imgBtnStaff" runat="server" Height="100px" ImageUrl="~/ImageFolder/Staff.png" PostBackUrl="~/LoginAdmin.aspx" OnClick="imgBtnStaff_Click"/></td>
        </tr>
        <tr >
            <td class="tablecontent2">
                <strong>
                <asp:HyperLink ID="hplStudent" runat="server" NavigateUrl="~/LoginStudent.aspx" ForeColor="#006666" Font-Size="15pt" style="text-decoration: none;" >Student</asp:HyperLink>
                </strong>
            </td>
            <td class="tablecontent2">
                <strong>
                <asp:HyperLink ID="hplStaff" runat="server" NavigateUrl="~/LoginStaff.aspx" ForeColor="#006666" Font-Size="15pt" style="text-decoration: none;">Staff</asp:HyperLink>
                </strong>&nbsp;&nbsp;&nbsp;
            </td>
            <td class="tablecontent2">
                <strong>
                <asp:HyperLink ID="hplAdmin" runat="server" NavigateUrl="~/LoginAdmin.aspx" ForeColor="#006666" Font-Size="15pt" style="text-decoration: none;">Admin</asp:HyperLink>
                </strong>
            </td>
        </tr>
    </table>

                
    </div>

    <div class="auto-style4">
        <asp:Label ID="lblLogoutMsg" runat="server" CssClass="auto-style5" ></asp:Label>
        <br />
        <br />
        <uc1:LoginStatus runat="server" ID="LoginStatus" />
    </div>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        
        .titlelogin {
            padding-bottom: 40px;
        }

        .logintitle {
            display: block;
            margin: 0 auto;
            text-align: center;
            color: #006666;
        }

        .table-container {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: white;
            margin-bottom: 50px;
        }

        .table {
            width: 70%;
            text-align: center;
            table-layout: fixed;
            background-color: white;
            background-color: transparent;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            border: 2px solid #006666;
        }

        .tablecontent {
            padding: 30px 0;
            width: 33.33%;
            height: 162px;
            background-color: transparent;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            border: 2px solid #006666;
        }

        .tablecontent2 {
            padding: 20px 0px;
            justify-content: center;
            align-items: center;
            color: #006666;
            background-color: transparent;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            border: 2px solid #006666;
            width: 33%;
        }

        .loginstatus {
            margin-bottom: 25px;
        }
        

        .auto-style4 {
            margin-bottom: 35px;
            text-align: center;
        }
        

        .auto-style5 {
            color: #006666;
        }
        

    </style>

</asp:Content>
