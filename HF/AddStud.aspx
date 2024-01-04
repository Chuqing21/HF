<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddStud.aspx.cs" Inherits="HF.AddStud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            <div class="Title">
            <asp:Label ID="Label8" runat="server" Text="Add Student"></asp:Label>
        </div>
        <br />
        <div class="addstudent">

            <table class="auto-style1">
                <tr>
                    <td class="textcol">
                        <asp:Label ID="Label1" runat="server" Text="Student ID : "></asp:Label>
                    </td>
                    <td class="datacol">
                <asp:Label ID="lblStudentID" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="textcol">
                        <asp:Label ID="Label2" runat="server" Text="Student Name : "></asp:Label>
                    </td>
                    <td class="datacol">
                <asp:TextBox ID="txtStudentname" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter The Name" ForeColor="Red" CssClass="valid" ControlToValidate="txtStudentName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="textcol">
                        <asp:Label ID="Label3" runat="server" Text="Gender : "></asp:Label>
                    </td>
                    <td class="datacol">
                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rblGender" ErrorMessage="Please Choose A Gender" ForeColor="Red" CssClass="valid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="textcol">
                        <asp:Label ID="Label4" runat="server" Text="Email : "></asp:Label>
                    </td>
                    <td class="datacol">
                <asp:TextBox ID="txtStudentemail" runat="server"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtStudentemail" 
    ErrorMessage="Invalid Format (xxx@xxx.com)" ForeColor="#6666FF" 
    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="valid"></asp:RegularExpressionValidator>
                        <br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtStudentemail" ErrorMessage="Please Enter The Email" ForeColor="Red" CssClass="valid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="textcol">
                        <asp:Label ID="Label5" runat="server" Text="Password : "></asp:Label>
                    </td>
                    <td class="datacol">
                        <asp:TextBox ID="txtPsw" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPsw" ErrorMessage="Please Enter The Password" ForeColor="Red" CssClass="valid"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="textcol">
                        <asp:Label ID="Label6" runat="server" Text="Parent Name : "></asp:Label>
                    </td>
                    <td class="datacol">
                        <asp:TextBox ID="txtParentN" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtParentN" ErrorMessage="Please Enter The Parent Name" ForeColor="Red" CssClass="valid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Parent Contact : "></asp:Label>
                    </td>
                    <td class="auto-style3">
            <asp:TextBox ID="txtParentC" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtParentC" ErrorMessage="Please Enter The Parent Contact" ForeColor="Red" CssClass="valid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
              
                </table>
            <br />
             <div align="center">
         <asp:Label ID="lblStudent" runat="server" Text="lblStudent" Visible="False"></asp:Label>
       <br />
     <br /></div>

        </div>
        <br />
        <div class="buttons">
            <table class="buttable">
                <tr>
                    <td class="but1">
                        <asp:Button ID="Addbutt" runat="server" Text="Save" CssClass="button-style" OnClick="Addbutt_Click" />
                    </td>
                    <td class="but2">
                        <asp:Button ID="clearbutt" runat="server" Text="Clear" CssClass="button-style" OnClick="clearbutt_Click" />
                    </td>
                </tr>
            </table>
        </div>


<style type="text/css">
    .valid{
        font-size:10pt;
    }
    .Title{
        font-size: 20pt;
        text-align:center;
        font-weight: bold;
        color: #006666;
        
    }

    .addstudent{
        width: 370pt;
        margin: 0 auto;
        color: #006666;
    }

    .textcol{
        vertical-align:top;
        font-size: 14pt;
        width:170pt;
    }

    .datacol{
        font-size: 14pt;
        width: 250pt;
    } 

    .buttons {
        width: 100%;
        text-align: center;
    }

    .buttable {
        display: inline-block;
    }

    .but1{
        width:50pt;
    }

    .but2{
        width:50pt;
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

    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        font-size: 14pt;
        width: 150pt;
        height: 30px;
    }
    .auto-style3 {
        font-size: 14pt;
        width: 175pt;
        height: 30px;
    }

</style>

    
    
</asp:Content>
