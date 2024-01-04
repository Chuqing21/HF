<%@ Page Language="C#" MasterPageFile="~/Site1.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="OnlineBanking.aspx.cs" Inherits="HF.OnlineBanking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="titleOB">
            <strong>
            <br />
            <asp:HyperLink ID="hplBackPayment" runat="server" NavigateUrl="~/Payment.aspx" style="text-decoration: none; font-size: 35pt; color: #006666;">< Online Banking</asp:HyperLink>
            </strong>
        </div>

        <div class="form">
            <div class="form-content">
                
                <asp:Label ID="lblSelBank" runat="server" Text="Select Your Bank"></asp:Label>
                <asp:DropDownList ID="ddlBankSelection" runat="server" OnSelectedIndexChanged="ddlBankSelection_SelectedIndexChanged" AutoPostBack="True" Height="25px" Width="130px">
                    <asp:ListItem Value="0">Select Bank</asp:ListItem>
                    <asp:ListItem>CIMB Bank</asp:ListItem>
                    <asp:ListItem>Maybank</asp:ListItem>
                    <asp:ListItem>Public Bank</asp:ListItem>
                    <asp:ListItem>Hong Leong Bank</asp:ListItem>
                    <asp:ListItem>RHB Bank</asp:ListItem>
                    <asp:ListItem>Am Bank</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="lblBSMsg" runat="server" ForeColor="Red" CssClass="auto-style2"></asp:Label>
                <br />
                <br />
                <strong>
                <asp:Label ID="lblBankSelected" runat="server" CssClass="auto-style4"></asp:Label>
                </strong>
                <br />
                <br />
                <asp:Label ID="lblAccDetail" runat="server" Text="Enter Account Detail"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblAccNo" runat="server" Text="Account Number"></asp:Label>
                <br />
                <asp:TextBox ID="txtAccNo" runat="server" Height="25px" Width="170px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Must Enter Account Number" ForeColor="Red" ControlToValidate="txtAccNo">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revAccNum" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtAccNo" ForeColor="Red" ValidationExpression="^\d{10}$|^\d{11}$|^\d{12}$|^\d{13}$|^\d{14}$">*</asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="lblAccPassword" runat="server" Text="Password"></asp:Label>
                <br />
                <asp:TextBox ID="txtAccPassword" runat="server" Height="25px" Width="170px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Must Enter Password" ControlToValidate="txtAccPassword" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAccPassword" ErrorMessage="Invalid Password" ForeColor="Red" ValidationExpression="^(?=.*[A-Z])(?=.*[!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;])(?=.*[0-9]).{8,}$">*</asp:RegularExpressionValidator>
                <br />
                <br />
                <br />
                <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="btnconfirm" Height="30px" Width="170px" OnClientClick="return validateBankSelection();" OnClick="btnConfirm_Click" PostBackUrl="~/PaymentCompleted.aspx" />
                <br />
                <br />
                <asp:ValidationSummary ID="valSum" runat="server" CssClass="auto-style5" ForeColor="Red" HeaderText="The following errors have been detected:" />
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

        .titleOB {
            padding-bottom: 40px;
            text-align: center;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding-bottom: 50px;
        }

        .form {
            border-radius: 25px;
            font-size: 15pt;
            font-weight: 500;
            width: 400px;
            padding-left: 30px;
            align-content: center;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            border: 2px solid #006666;
            color: #006666;
        }

        .form-content {
            margin: 20px;
            padding-top: 20px;
            padding-left: 10px;
            padding-right: 10px;
        }
        

        .btnconfirm {
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

        .auto-style2 {
            font-size: 12pt;
        }

         .auto-style4 {
            text-decoration: underline;
            color: #006666;
            font-weight: bold;
        }

        .auto-style5 {
            font-size: 12pt;
        }

    </style>

    <script type="text/javascript">
        function validateBankSelection() {
            var ddlBank = document.getElementById('<%= ddlBankSelection.ClientID %>');
        var selectedValue = ddlBank.options[ddlBank.selectedIndex].value;

        if (selectedValue === "0") {
            document.getElementById('<%= lblBSMsg.ClientID %>').innerText = "* Please Select";
                return false;
            }

            return true;
        }
    </script>
    
</asp:Content>



