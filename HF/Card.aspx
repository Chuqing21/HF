<%@ Page Language="C#" MasterPageFile="~/Site1.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="Card.aspx.cs" Inherits="HF.Card" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container">
        <div class="titleCD">
            <strong>
                <br />
                <asp:HyperLink ID="hplBackPayment" runat="server" CssClass="auto-style4" NavigateUrl="~/Payment.aspx" style="text-decoration: none; font-size: 35pt; ">< Credit/Debit Card</asp:HyperLink>
            </strong>
        </div>

        <div class="auto-style3">     
            <div class="contentForm">
                
                <asp:Label ID="lblCardDetail" runat="server" Text="Enter Card Detail" CssClass="auto-style4" style="font-size: 15pt"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblCardName" runat="server" Text="Name On Card" CssClass="auto-style6"></asp:Label>
                <br />
                <asp:TextBox ID="txtCardName" runat="server" Height="25px" Width="170px" CssClass="uppercase-textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCardName" ErrorMessage="Must Enter Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revCardName" runat="server" ControlToValidate="txtCardName" ErrorMessage="Invalid Name" ForeColor="Red" ValidationExpression="^[^\d]+$">*</asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="lblCardNo" runat="server" Text="Card Number" CssClass="auto-style6"></asp:Label>
                <br />
                <asp:TextBox ID="txtCardNo" runat="server" Height="25px" Width="170px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCardNo" ErrorMessage="Must Enter Card Number" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revCardNum" runat="server" ControlToValidate="txtCardNo" ErrorMessage="Invalid Card Number" ForeColor="Red" ValidationExpression="(^4\d{15})|(^5\d{15})">*</asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="lblExp" runat="server" Text="Expiry Date (MM/YY)" CssClass="auto-style6"></asp:Label>
                &nbsp;&nbsp;<span class="auto-style5">&nbsp;&nbsp;&nbsp; CVV</span><br />
                <asp:TextBox ID="txtExpDate" runat="server" Height="25px" Width="175px" placeholder="MM/YY" CssClass="expiry-date" MaxLength="5" oninput="formatExpDate(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Must Enter Expiry Date" ControlToValidate="txtExpDate" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revExpDate" runat="server" ControlToValidate="txtExpDate" ErrorMessage="Invalid Expiry Date" ForeColor="Red" ValidationExpression="^(0[1-9]|1[0-2])\/(2[4-9]|30)$">*</asp:RegularExpressionValidator>
                &nbsp;&nbsp; <asp:TextBox ID="txtCVV" runat="server" Height="25px" Width="45px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Must Enter CVV" ControlToValidate="txtCVV" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revCVV" runat="server" ControlToValidate="txtCVV" ErrorMessage="Invalid CVV" ForeColor="Red" ValidationExpression="^\d{3}$">*</asp:RegularExpressionValidator>
                <br />
                <br />
                <br />
                <asp:Button ID="btnComfirmCard" runat="server" CssClass="btnConfirm" Height="30px" Text="Confirm" Width="170px" style="font-size: 12pt; left: 60%; top: 390px;" PostBackUrl="~/PaymentCompleted.aspx" OnClick="btnComfirmCard_Click"/>
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style8" ForeColor="Red" HeaderText="The following errors have been detected:" style="font-size: 12pt" />
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

    .titleCD {
        padding-bottom: 40px;
        text-align: center;
    }

    .content{
        height:100%;
        margin-bottom:80px;
    }
    
    .contentForm {
        margin: 20px;
        padding-top: 20px;
        padding-bottom: 20px;
        padding-left: 10px;
        padding-right: 10px;
    }

    .contentForm .btnConfirm {
        border: 2px solid #006666;
        outline: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 1em;
        color: white;
        background-color: #006666;
        font-weight: 500;
        left: 50%;    
    }

    .container {
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding-bottom: 50px;
    }

    .auto-style3 {
        border-radius: 25px;
        color: white;
        font-size: 15pt;
        font-weight: 500;
        width: 400px;
        padding-left: 30px;
        align-content: center;
        text-align: left;
        background-color: transparent;
        box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
        border: 2px solid #006666;
        color: #006666;
        padding-top: 
    }

    .auto-style4 {
        font-size: 12pt;
        color: #006666;
    }

    .auto-style5 {
        color: #006666;
    }

    .auto-style6 {
        font-size: 15pt;
        color: #006666;
    }

    
      
</style>


    <script type="text/javascript">
        function formatExpDate(input) {
            // Get the current value of the TextBox
            var value = input.value;

            // Check if the length is 2 (user entered MM)
            if (value.length === 2) {
                // Automatically append "/" after the MM
                input.value = value + '/';
            }
        }

        // Function to convert input text to uppercase
        function convertToUpperCase() {
            var textBox = document.getElementById('<%= txtCardName.ClientID %>');
            textBox.value = textBox.value.toUpperCase();
        }

        // Attach the function to the onkeyup event of the TextBox
        document.getElementById('<%= txtCardName.ClientID %>').onkeyup = convertToUpperCase;
    </script>






</asp:Content>
