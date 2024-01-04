<%@ Page Language="C#" MasterPageFile="~/Site1.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="HF.LoginAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

            <div class="titleadmin">
        <strong>
            <br />
            <asp:Label ID="lblAdminLogin" runat="server" Text="Admin Login" Font-Bold="True" Font-Size="35pt"></asp:Label>
        </strong>
    </div>

<div class="container">
    <div class="formcontent">

        <div class="field">
            <asp:Label ID="lblAdminID" runat="server" Text="Admin ID" CssClass="label"></asp:Label>
            <br />
            <asp:TextBox ID="txtAdminID" runat="server" Height="25px" Width="200px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAdminID" ErrorMessage="Admin ID is required" ForeColor="Red" CssClass="auto-style10">* Admin ID is required</asp:RequiredFieldValidator>
        </div>

        <div class="field">
            <asp:Label ID="lblAdminPass" runat="server" Text="Password" CssClass="label"></asp:Label>
            <br />
            <asp:TextBox ID="txtAdminPass" runat="server" Height="25px" Width="200px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdminPass" ErrorMessage="Password is required" ForeColor="Red" CssClass="auto-style10">* Password is required</asp:RequiredFieldValidator>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ForgotPassword.aspx" Font-Size="10pt" CssClass="fp" ForeColor="#006666">Forgot Password?</asp:HyperLink>
            <br />
        </div>

        <div class="loginField">
            <asp:Button ID="btnLoginAdmin" runat="server" Text="Login" CssClass="btnLogin" Height="35px" Width="200px" style="font-size: 12pt" OnClick="btnLoginAdmin_Click"/>  
            <br />
            <asp:Label ID="lblIncData" runat="server" CssClass="auto-style11"></asp:Label>
            <br />
        </div>

        
                    
        <div align="left" class="auto-style9">
            <br />
            <strong>
            <asp:HyperLink ID="hplBackLogin" runat="server" CssClass="auto-style2" NavigateUrl="~/Login.aspx" ForeColor="#006666" style="font-size: 12pt; text-decoration: none;">< Back</asp:HyperLink>
            </strong>
        </div>
    </div>
</div>
        

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    .container {
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .titleadmin {
        font-size: 30pt;
        align-items: center;
        text-align: center;
        padding-bottom: 40px;
        color: #006666;
    }
    
    .loginField {
        align-items: center;
        justify-content: center;
        padding: 20px;
        text-align: center;
    }

    .formcontent {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        border-radius: 25px;
        font-size: 15pt;
        background-color: transparent;
        width: 350px;
        box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
        text-align: right;
        border: 2px solid #006666;
        margin-bottom: 50px;
    }

    .field {
        align-items: center;
        justify-content: center;
        padding-top: 25px;
        text-align: left;
    }

    .btnLogin {
        border: 2px solid #006666;
        outline: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 1em;
        background-color: #006666;
        color: white;
        font-weight: 500;
        left: 50%;
    }

    .auto-style9 {
        padding-top: 15px;
        justify-content: left;
        text-align: left;
    }

    .label {
        font-size: 15pt;
        color: #006666;
    }

    .fp {
        text-decoration: none;
    }

    .auto-style10 {
        font-size: 10pt;
    }

    .auto-style11 {
        color: #FF0000;
        font-size: 12pt;
    }

</style>

</asp:Content>
