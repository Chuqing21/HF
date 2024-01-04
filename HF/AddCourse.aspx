<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="HF.AddCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            
    <div class="Title">
        <br />
        <asp:Label ID="lblAddCourse" runat="server" Text="Add Course" CssClass="auto-style4"></asp:Label>
    </div>
        
        <div class="addcourse">

            <table class="auto-style1">
                <tr>
                    <td class="textcol"><strong><asp:Label ID="Label1" runat="server" Text="Course ID : " Font-Size="15pt" CssClass="auto-style5"></asp:Label></strong></td>
                    <td class="datacol"><asp:Label ID="lblCourseID" runat="server" CssClass="auto-style5"></asp:Label></td>
                </tr>
                <tr>
                    <td class="textcol"><strong><asp:Label ID="Label2" runat="server" Text="Course Name : " Font-Size="15pt" CssClass="auto-style5"></asp:Label></strong></td>
                    <td class="datacol">
                        <asp:TextBox ID="txtCourseN" runat="server" Height="25px" Width="150px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCourseN" ErrorMessage="Please Enter The Name" ForeColor="Red" CssClass="valid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong><asp:Label ID="Label3" runat="server" Text="Description : " Font-Size="15pt"></asp:Label></strong></td>
                    <td class="datacol">
                        <asp:TextBox ID="txtDes" runat="server" Height="25px" Width="150px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDes" ErrorMessage="Please Enter The Description" ForeColor="Red" CssClass="valid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong><asp:Label ID="Label4" runat="server" Text="Price : " Font-Size="15pt"></asp:Label></strong></td>
                    <td class="datacol">
                        <asp:TextBox ID="txtCourseP" runat="server" Height="25px" Width="150px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCourseP" ErrorMessage="Please Enter The Price" ForeColor="Red" CssClass="valid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
                </table>

        </div>
        <br />
        <div class="buttons">
            <table class="buttable">
                <tr>
                    <td class="but1"><asp:Button ID="Addbutt" runat="server" Text="Save" CssClass="button-style" OnClick="Addbutt_Click" Width="100px" /></td>
                    <td class="but2"><asp:Button ID="clearbutt" runat="server" Text="Clear" CssClass="button-style" OnClick="clearbutt_Click1" Width="100px" /></td>
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
    
    .valid{
        font-size:10pt;
    }

    .Title{
        font-size: 20pt;
        text-align:center;
        font-weight: bold;
        color: #006666;
        margin-bottom: 25px;
    }

    .addcourse {
        width: 325pt;
        margin: 0 auto;
        color: #006666;
        border: 2px solid #006666;
        box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
        border-radius: 25px;
        width: 450px;
        padding-top: 25px;
        padding-bottom: 15px;
        margin-top: 25px;
        margin-bottom: 20px;
    }

    .textcol{
        vertical-align:top;
        font-size: 14pt;
        width:220px;
        height: 40px;
        padding-left: 40px;
    }

    .datacol{
        font-size: 14pt;
        width: 250pt;
        padding-left: 20px;
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

    .but1{
        width:50pt;
        padding-left: 130px;
    }

    .but2{
        width:50pt;
        padding-left: 35px;
    }

    .button-style {
        background-color: #006666; 
        color: #ffffff; 
        border: 2px solid #006666; 
        border-radius: 12px; 
        padding: 10px 20px; 
        cursor: pointer; 
        font-size: 15pt; 
    }

    .button-style:hover {
        background-color: #ffffff; 
        color: #006666;
    }

    .auto-style1 {
        width: 100%;
    }
    .auto-style4 {
        font-size: 35pt;
    }

    .auto-style5 {
        color: #006666;
    }
    .auto-style6 {
        vertical-align: top;
        font-size: 14pt;
        width: 220px;
        height: 40px;
        padding-left: 40px;
        color: #006666;
    }

</style>

    
    
    
</asp:Content>
