<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginStatus.ascx.cs" Inherits="HF.LoginStatus" %>

<style type="text/css">
    .auto-style1 {
        color: #006666;
        font-size: 12pt;
    }
    .auto-style2 {
        color: #006666;
        text-decoration: none;
        font-size: 12pt;
    }
    .auto-style3 {
        font-size: 12pt;
    }
</style>

<div style="text-align: center; background-color: white;">



    <span class="auto-style1">You have logged on as
    </span><strong>
    <asp:Label ID="lblUsername" runat="server" CssClass="auto-style1"></asp:Label>
    </strong>
    <br class="auto-style1" />
    <span class="auto-style1">You have logged on at </span><strong> <asp:Label ID="lblLoginTime" runat="server" CssClass="auto-style1"></asp:Label>
    </strong>
    <br class="auto-style3" />
    <asp:LoginStatus ID="LoginStatus1" runat="server" Visible="False" CssClass="auto-style3" />
    <br class="auto-style3" />
    <strong>
    <asp:LinkButton ID="btnLogout" runat="server" OnClick="btnLogout_Click1" CssClass="auto-style2">Logout</asp:LinkButton>


    </strong>


</div>