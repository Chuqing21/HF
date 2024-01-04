<%@ Page Language="C#" MasterPageFile="~/Site1.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="HF.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="titlepayment">
        <strong>
            <br />
            <asp:Label ID="lblPayment" runat="server" Text="Payment" Font-Bold="True" Font-Size="35pt" CssClass="fontcolor"></asp:Label>
        </strong>
    </div>

    <div class="formstyle">
    <div class="form">
        <br />
        <asp:Label ID="lblPaymentMethod" runat="server" Font-Bold="True" Font-Size="15pt" Text="Select Payment Method" CssClass="auto-style6"></asp:Label>
        <div class="method">
            <asp:Label ID="lblTA" runat="server" Text="Total Amount: "></asp:Label>
            &nbsp;&nbsp;
            <asp:Label ID="lblTotalAmount" runat="server" Text="[GetTotalAmount]"></asp:Label>
            <br />
            <br />
            <div class="methodS" id="Method1" click="redirectToPage('<%= ResolveUrl("~/OnlineBanking.aspx") %>')">
                <asp:ImageButton ID="imgBtnOnlineBanking" runat="server" Height="30px" ImageUrl="~/ImageFolder/FPX.png" PostBackUrl="~/OnlineBanking.aspx" OnClick="imgBtnOnlineBanking_Click" />
                <strong><asp:HyperLink ID="hplOnlineBanking" runat="server" CssClass="auto-style18" NavigateUrl="~/OnlineBanking.aspx" Height="25px" Width="200px">Online Banking</asp:HyperLink>
                </strong>
            </div>
    
            <div class="methodS" id="Method2" onclick="redirectToPage('<%= ResolveUrl("~/Card.aspx") %>')">
                &nbsp;&nbsp;
                <asp:ImageButton ID="imgBtnCreDebit" runat="server" Height="30px" ImageUrl="~/ImageFolder/Credit.png" PostBackUrl="~/Card.aspx" OnClick="imgBtnCreDebit_Click" />
                <strong>&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="hplCreditDebit" runat="server" CssClass="auto-style18" NavigateUrl="~/Card.aspx" Height="25px" Width="190px">Credit/Debit Card</asp:HyperLink>
                </strong>
            </div>

            <div class="tnc">
                <asp:Label ID="Label1" runat="server" Text="By continuing, you agree to" CssClass="auto-style16" ></asp:Label>
                <br />
                <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TermCondition.aspx" style="color: #006666; font-weight: bold" CssClass="auto-style17">Terms and Conditions</asp:HyperLink>
                </strong>
            </div>
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

    .titlepayment {
        padding-bottom: 40px;
        text-align: center;
    }

    .method {
        margin: 20px 10px;
    }

    .fontcolor {
        color: #006666;
    }

    .form {
        border-radius: 25px;
        font-size: 15pt;
        font-weight: 500;
        width: 370px;
        background-color: transparent;
        box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
        border: 2px solid #006666;
        color: #006666;
        margin-bottom: 50px;
        text-align: center;
    }

    .auto-style6 {
        font-size: 15pt;
    }

    .methodS {
        padding-top: 20px;
        padding-bottom: 10px;
    }

    .formstyle {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    .auto-style16 {
        color: #999999;
        font-size: 12pt;
    }

    .auto-style17 {
        font-size: 12pt;
    }

    .tnc {
        padding-top: 30px;
    }



    .auto-style18 {
        font-size: 15pt;
        text-decoration: none;
        color: #006666;
        font-weight: bold;
    }



</style>

    <script type="text/javascript">
    function redirectToPage(url) {
        window.location.href = url;
        }
        

    </script>


    
</asp:Content>
