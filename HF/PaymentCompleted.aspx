<%@ Page Language="C#" MasterPageFile="~/Site1.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="PaymentCompleted.aspx.cs" Inherits="HF.PaymentCompleted" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="form">
        <div class="titlepaid">
            <strong>
                <br />
                <asp:Image ID="Image1" runat="server" Height="42px" ImageUrl="~/ImageFolder/Paid.png" />
                &nbsp;
                <asp:Label ID="lblPaid" runat="server" Text="Payment Completed" Font-Bold="True" Font-Size="35pt" CssClass="auto-style5"></asp:Label>
            </strong>
        </div>

        <div class="container">
            <div class="titledetail">
                <strong>
                <asp:Label ID="lblPaymentDetail" runat="server" Text="Payment Details" CssClass="auto-style8"></asp:Label>
                </strong>
            </div>
            <div>
                <table class="table">
                <tr class="detail">
                    <td><strong><asp:Label ID="lblPayID1" runat="server" Text="Payment ID"></asp:Label></strong></td>
                    <td><asp:Label ID="lblPayID2" runat="server"></asp:Label></td>
                </tr>
                <tr class="detail">
                    <td><strong><asp:Label ID="lblPayDate1" runat="server" Text="Payment Date"></asp:Label></strong></td>
                    <td><asp:Label ID="lblPayDate2" runat="server"></asp:Label></td>
                </tr>
                <tr class="detail">
                    <td><strong><asp:Label ID="lblPayMeth1" runat="server" Text="Payment Method"></asp:Label></strong></td>
                    <td><asp:Label ID="lblPayMeth2" runat="server"></asp:Label></td>
                </tr>
                <tr class="detail">
                    <td><strong><asp:Label ID="lblTotalAmt1" runat="server" Text="Total Amount"></asp:Label></strong></td>
                    <td><asp:Label ID="lblTotalAmt2" runat="server" Text="[GetPaymentAmount]"></asp:Label></td>
                </tr>
                <tr class="detail">
                    <td><strong><asp:Label ID="lblOtherDet1" runat="server" Text="[OtherDetail]"></asp:Label></strong></td>
                    <td><asp:Label ID="lblOtherDet2" runat="server" Text="[GetOtherDetail]"></asp:Label></td>
                </tr>
            </table>
                <div class="btn">
                    <asp:Button ID="btnHome" runat="server" Text="Back To Home" CssClass="auto-style6" Height="30px" Width="150px" OnClick="btnHome_Click" />
                    &nbsp;
                    <asp:Button ID="btnTimetable" runat="server" Text="View Detail" CssClass="auto-style7" Height="30px" Width="150px" PostBackUrl="~/ProfileStudent.aspx" OnClick="btnTimetable_Click" />
                </div>
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
      
    .table {
        width: 500px;
        margin: 0 auto;
    }

    .titlepaid {
    padding-bottom: 40px;
    text-align: center;
}

    .detail td {
        padding: 15px;
        width: 50%;
    }

    .titleDet {
        padding-bottom: 10px;
    }

    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        border-radius: 25px;
        font-size: 15pt;
        font-weight: 500;
        width: 600px;
        text-align: left;
        background-color: transparent;
        box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
        border: 2px solid #006666;
        color: #006666;
    }  

    .titledetail {
        padding-bottom: 35px;
        padding-top: 15px;
        text-align: left;
    }

    .form {
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding-bottom: 50px;
    }
    

    .auto-style5 {
        color: #006666;
    }

    .auto-style6 {
        border: 2px solid #006666;
        outline: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 12pt;
        background-color: #006666;
        color: white;
        font-weight: 500;
        left: 50%;
        margin: 10px 20px;
    }

    .auto-style7 {
        border: 2px solid #006666;
        outline: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 12pt;
        background-color: transparent;
        color: #006666;
        font-weight: 500;
        left: 50%;
        margin: 10px 20px;
    }
    

    .btn {
        margin: 5px 45px;
    }


    .auto-style8 {
        font-weight: bold;
        font-size: 20pt;
    }


</style>
    
</asp:Content>