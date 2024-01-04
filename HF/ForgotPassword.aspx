<%@ Page Language="C#" MasterPageFile="~/Site1.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="HF.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
                    <div class="titleretrieve">
        <strong>
            <br />
            <asp:Label ID="lblRetrievePassword" runat="server" Text="Retrieve Password" Font-Bold="True" Font-Size="35pt"></asp:Label>
        </strong>
    </div>

<div class="container">
    <div class="formcontent">

        <div class="field" id="^\S{4}$">
            <strong>
            <asp:Label ID="Label2" runat="server" Text="Enter Your ID and Email" CssClass="auto-style12" ForeColor="#006666"></asp:Label>
            </strong>
            <br />
            <strong>
            <asp:Label ID="Label1" runat="server" Text="To Retrieve Your Password" CssClass="auto-style12" ForeColor="#006666"></asp:Label>
            </strong>
            <br />
            <br />
            <asp:Label ID="lblUserID" runat="server" Text="User ID" CssClass="label"></asp:Label>
            <br />
            <asp:TextBox ID="txtUserID" runat="server" Height="25px" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserID" ErrorMessage="ID is required" ForeColor="Red" CssClass="auto-style12">*</asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="auto-style12" ErrorMessage="Invalid ID" ForeColor="Red" ControlToValidate="txtUserID" ValidationExpression="^\S{4}$">* Invalid ID</asp:RegularExpressionValidator>
        </div>

        <div class="field">
            <asp:Label ID="lblUserEmail" runat="server" Text="Email" CssClass="label"></asp:Label>
            <br />
            <asp:TextBox ID="txtUserEmail" runat="server" Height="25px" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUserEmail" ErrorMessage="Email is required" ForeColor="Red" CssClass="auto-style12">*</asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUserEmail" CssClass="auto-style12" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">* Invalid Email</asp:RegularExpressionValidator>
        </div>

        <div class="submitfield">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btnSubmit" Height="30px" Width="200px" style="font-size: 12pt" OnClick="btnSubmit_Click"/>  
            <br />
        </div>
                    
        <div class="auto-style9">
            <asp:Label ID="lblFeedback" runat="server" CssClass="auto-style13"></asp:Label>
            <br />
            <br />
            <strong>
            <asp:HyperLink ID="hplBackLogin" runat="server" CssClass="auto-style2" NavigateUrl="~/Login.aspx" ForeColor="#006666" style="font-size: 12pt; text-decoration: none;">< Back to Login</asp:HyperLink>
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

    .titleretrieve {
        font-size: 30pt;
        align-items: center;
        text-align: center;
        padding-bottom: 40px;
        color: #006666;
    }
    
    .submitfield {
        align-items: center;
        justify-content: center;
        padding-top: 40px;
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
        margin-bottom: 40px;
    }

    .field {
        align-items: center;
        justify-content: center;
        padding-top: 30px;
        text-align: left;
    }

    .btnSubmit {
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

    
    .auto-style12 {
        font-size: 12pt;
    }

    .auto-style13 {
        font-size: 12pt;
        color: #FF0000;
    }

</style>







    
</asp:Content>