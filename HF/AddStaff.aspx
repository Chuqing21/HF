<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddStaff.aspx.cs" Inherits="HF.AddStaff" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
            
    <div class="Title">
        <br />
        <asp:Label ID="Label8" runat="server" Text="Add Staff" CssClass="auto-style4"></asp:Label>
    </div>
        <br />
        
    <div class="addstaff">

        <table class="container">
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text="Staff ID : "></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="staffidlbl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text="Staff Name : "></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="staffname" runat="server" Height="25px" Width="150px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="staffname" ErrorMessage="Please Enter The Name" ForeColor="Red" CssClass="valid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label3" runat="server" Text="Gender : "></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <div class="auto-style9">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                        </asp:RadioButtonList>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Please Choose A Gender" ForeColor="Red" CssClass="valid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label4" runat="server" Text="Email : "></asp:Label>
                    </td>
                    <td class="auto-style8">
                
                        <asp:TextBox ID="staffemail" runat="server" Height="25px" Width="150px"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="staffemail" ErrorMessage="Invalid Format (xxx@xxx.com)" ForeColor="#6666FF" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="valid"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="staffemail" ErrorMessage="Please Enter The Email" ForeColor="Red" CssClass="valid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label5" runat="server" Text="Education Background : "></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px">
                            <asp:ListItem Text="--PLEASE SELECT--" Value="" />
                            <asp:ListItem>SPM</asp:ListItem>
                            <asp:ListItem>UEC</asp:ListItem>
                            <asp:ListItem>Diploma</asp:ListItem>
                            <asp:ListItem>Degree</asp:ListItem>
                            <asp:ListItem>Master</asp:ListItem>
                            <asp:ListItem>Doctor</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please Choose Education Background" ForeColor="Red" CssClass="valid"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label6" runat="server" Text="Teaching Area : "></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Text="--PLEASE SELECT--" Value="" />
                            <asp:ListItem>Mandarin</asp:ListItem>
                            <asp:ListItem>English</asp:ListItem>
                            <asp:ListItem>Bahasa Melayu</asp:ListItem>
                            <asp:ListItem>Mathematics</asp:ListItem>
                            <asp:ListItem>Science</asp:ListItem>
                            <asp:ListItem>History</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Please Choose Teaching Area" ForeColor="Red" CssClass="valid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label7" runat="server" Text="Teaching Experience : "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="teachingexp" runat="server" Height="25px" Width="150px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="teachingexp" ErrorMessage="Please Enter Teaching Experience" ForeColor="Red" CssClass="valid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Hired Date :</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtHireDate" runat="server" Height="25px" Width="150px"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/ImageFolder/calendar.png" ImageAlign="AbsBottom" Height="29px" OnClick="ImageButton1_Click" Width="31px" CausesValidation="False" />
                        <asp:Calendar ID="Calendar1" runat="server" Height="263px" Width="283px" BackColor="#DFD3D2" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtHireDate" ErrorMessage="Please Choose A Date" ForeColor="Red" CssClass="valid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                </table>
        <br />

        </div>
    
    <div class="buttons">
        <asp:Button ID="Addbutt" runat="server" Text="Save" CssClass="auto-style12" OnClick="Addbutt_Click" />
        <asp:Button ID="clearbutt" runat="server" Text="Clear" CssClass="auto-style12" OnClick="clearbutt_Click" />
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
        
    }

    .addstaff {
        width: 370pt;
        margin: 0 auto;
        color: #006666;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    

    .textcol{
        vertical-align:top;
        font-size: 14pt;
        width:170pt;
        padding-top: 10px;
    }

    .datacol{
        font-size: 14pt;
        width: 250pt;
    }


    .buttons {
            text-align: center;
            padding: 20px;
            text-align: center;
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

    .container {
        width: 100%;
        padding-top: 15px;
        padding-left: 10px;
        background-color: transparent;
        width: 480px;
        box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
        text-align: right;
        border: 2px solid #006666;
    }
    

    .auto-style3 {
        font-size: 14pt;
        width: 175pt;
        height: 30px;
        text-align: left;
    }

    .auto-style4 {
        font-size: 35pt;
    }

    .auto-style6 {
        font-size: 14pt;
        width: 227pt;
        height: 30px;
        text-align: left;
    }

    .auto-style7 {
        vertical-align: top;
        font-size: 14pt;
        width: 227pt;
        padding-top: 10px;
        text-align: left;
    }

    .auto-style8 {
        font-size: 14pt;
        width: 250pt;
        text-align: left;
    }
    .auto-style9 {
        text-align: left;
    }

    .auto-style12 {
        background-color: #006666;
        color: #ffffff;
        border: 2px solid #006666;
        border-radius: 12px;
        padding: 10px 20px;
        cursor: pointer;
        font-size: 15pt;
    }


</style>

    
</asp:Content>
