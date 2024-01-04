<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SavedStaff.aspx.cs" Inherits="HF.SavedStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
            
    
        <div class="titlesave">
            <br />
            <strong>
            <asp:Label ID="lblSaved" runat="server" Text="Successfully Saved A New Staff" CssClass="auto-style2"></asp:Label>
            </strong>
        </div>
        <br />
        <div class="info">
            <asp:Label ID="errorLabel" runat="server" ForeColor="Red"></asp:Label>
            <table style="width:100%;">
                <tr>
                    <td class="text"><strong><asp:Label ID="Label1" runat="server" Text="Staff ID : "></asp:Label></strong></td>
                    <td class="data"><asp:Label ID="lblstaffid" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="text"><strong><asp:Label ID="Label2" runat="server" Text="Staff Name : "></asp:Label></strong></td>
                    <td class="data"><asp:Label ID="lblstaffname" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="text"><strong><asp:Label ID="Label3" runat="server" Text="Gender : "></asp:Label></strong></td>
                    <td class="data"><asp:Label ID="lblstaffgender" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="text"><strong><asp:Label ID="Label4" runat="server" Text="Email : "></asp:Label></strong></td>
                    <td class="data"><asp:Label ID="lblstaffemail" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="text"><strong><asp:Label ID="Label5" runat="server" Text="Education Background : "></asp:Label></strong></td>
                    <td class="data"><asp:Label ID="lblstaffedubg" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="text"><strong><asp:Label ID="Label6" runat="server" Text="Teaching Area : "></asp:Label></strong></td>
                    <td class="data"><asp:Label ID="lblstaffteacharea" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="text"><strong><asp:Label ID="Label7" runat="server" Text="Teaching Experience : "></asp:Label></strong></td>
                    <td class="data"><asp:Label ID="lblstaffteachexp" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="text"><strong><asp:Label ID="Label8" runat="server" Text="Hired Date :"></asp:Label></strong></td>
                    <td class="data"><asp:Label ID="lblstaffhiredate" runat="server"></asp:Label></td>
                </tr>
            </table>
            
        </div>
        <br />
        <div class="buttons">
            <table class="buttable">
                <tr>
                    <td class="but1"><asp:Button ID="backbutt" runat="server" Text="Back To Profile" CssClass="button-style" /></td>
                    <td class="but2"><asp:Button ID="editbutt" runat="server" Text="Edit/Delete Staff" CssClass="button-style" OnClick="editbutt_Click" /></td>
                </tr>
            </table>
        </div>

<style type="text/css">
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    .titlesave {
        text-align: center;
    }

    .info {
        width: 325pt;
        margin: 0 auto;
        color: #006666;
        border: 2px solid #006666;
        box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
        border-radius: 25px;
        width: 500px;
        padding-top: 15px;
        padding-bottom: 15px;
        margin-top: 25px;
        margin-bottom: 20px;
    }
    

    .text{
        font-size: 15pt;
        width: 170pt;
        height: 40px;
        padding-left: 15px;
    } 

    .data {
        font-size: 14pt;
        width:150pt;
    }

    .but1{
        width:50pt;
        padding-left: 70px;
    }

    .but2{
        width:50pt;
        padding-left: 25px;
    }

    .buttons {
        margin: 0 auto;
        width: 100%;
        text-align: center;
        width: 500px;
        margin-bottom: 25px;
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

    .auto-style2 {
        font-size: 35pt;
        color: #006666;
    }

    
</style>
    
</asp:Content>
