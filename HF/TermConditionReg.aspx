<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TermConditionReg.aspx.cs" Inherits="HF.TermConditionReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div >

            <div class="titlereg"><strong><asp:Label ID="lblTitle" runat="server" Text="TERMS AND CONDITIONS" CssClass="auto-style1"></asp:Label></strong></div>
            <br />
    <div class="ttword"><asp:Label ID="lblttitle" runat="server" Text="Welcome to A+ Education's Online Course Registration System! Before you proceed with registering for our courses, please carefully read and understand the following terms and conditions. By using our system, you agree to abide by these terms." CssClass="auto-style3"></asp:Label><br /></div>
            
            <br />
            <div><strong><asp:Label ID="lblT1" runat="server" Text="1. Registration and Account" CssClass="auto-style4"></asp:Label></strong><br />
                <asp:Label ID="LbltT1" runat="server" Text="1.1 To access A+ Education's Online Course Registration System, users must create an account by providing accurate and complete information."></asp:Label><br />
                <asp:Label ID="LblT2" runat="server" Text="1.2 Users are responsible for maintaining the confidentiality of their account credentials and for all activities that occur under their account."></asp:Label><br />
                <asp:Label ID="LblT3" runat="server" Text="1.3 A+ Education reserves the right to refuse registration or cancel an account at its sole discretion."></asp:Label><br />
            </div>

            <br />

             <div><strong><asp:Label ID="lbltT2" runat="server" Text="2. Course Enrollment" CssClass="auto-style4"></asp:Label></strong><br />
     <asp:Label ID="LblT4" runat="server" Text="2.1 Course availability is subject to change without notice."></asp:Label><br />
                 <asp:Label ID="LblT5" runat="server" Text="2.2 A+ Education reserves the right to modify or discontinue courses at any time."></asp:Label>
                 <br /><asp:Label ID="LblT6" runat="server" Text="2.3 Enrollment in a course is complete upon successful payment of applicable fees.

"></asp:Label><br />
 </div>

            <br />
            
             <div><strong><asp:Label ID="lbltT3" runat="server" Text="3. Fees and Payments" CssClass="auto-style4"></asp:Label></strong><br />
     <asp:Label ID="LblT7" runat="server" Text="3.1 Users agree to pay all fees associated with the selected courses in a timely manner."></asp:Label><br />
                 <asp:Label ID="LblT8" runat="server" Text="3.2 Fees are non-refundable except as expressly stated in the refund policy."></asp:Label><br />
                 <asp:Label ID="LblT9" runat="server" Text="3.3 A+ Education reserves the right to change course fees at any time."></asp:Label><br />
 </div>

            <br />

             <div><strong><asp:Label ID="lbltT4" runat="server" Text="4. Intellectual Property" CssClass="auto-style4"></asp:Label></strong><br />
     <asp:Label ID="LblT10" runat="server" Text="4.1 All course materials, content, and intellectual property provided by A+ Education are protected by copyright and other intellectual property laws."></asp:Label><br />
                 <asp:Label ID="LblT11" runat="server" Text="4.2 Users may not reproduce, distribute, or use course materials for commercial purposes without explicit permission."></asp:Label><br />
 </div>
            <br />

                        <div><strong><asp:Label ID="lbltT5" runat="server" CssClass="auto-style4" Text="5. System Access and Security

"></asp:Label></strong><br />
    <asp:Label ID="LblT12" runat="server" Text="5.1 A+ Education is not responsible for any loss or damage resulting from unauthorized access to user accounts."></asp:Label><br />
                            <asp:Label ID="LblT13" runat="server" Text="5.2 Users must report any unauthorized access or security breaches promptly."></asp:Label><br />
</div>

            <br />
                        <div><strong><asp:Label ID="lbltT6" runat="server" Text="6. Disclaimer" CssClass="auto-style4" ></asp:Label></strong><br />
    <asp:Label ID="LblT14" runat="server" Text="6.1 A+ Education makes no warranties, express or implied, regarding the accuracy or completeness of course content."></asp:Label><br />
                            <asp:Label ID="LblT15" runat="server" Text="6.2 A+ Education is not responsible for any technical issues that may interrupt or disrupt access to the Online Course Registration System."></asp:Label><br />
</div>

            <br />

                        <div><strong><asp:Label ID="lbltT7" runat="server" Text="7. Governing Law" CssClass="auto-style4"></asp:Label></strong><br />
    <asp:Label ID="LblT16" runat="server" Text="7.1 These terms and conditions are governed by and construed in accordance with the laws of the jurisdiction in which A+ Education is located."></asp:Label><br />


</div>
            <br />
            <br />
            <div class="ttword"> 
                <asp:Label ID="Lblttt" runat="server" Text="By using A+ Education's Online Course Registration System, you acknowledge that you have read, understood, and agreed to these terms and conditions. A+ Education reserves the right to update or modify these terms at any time, and users are encouraged to review them regularly."></asp:Label></div>

        </div>
        <br />

      

    </form>


    <style>


        #form1 {
            width: 80%;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            margin-top: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .ttword{
             font-size: 14pt;
        }
       
         .titlereg {
     text-align: center;
     padding-bottom: 10px;
 }

         .auto-style1 {
     font-size: 20pt;
     color: #000000;
    

 }

          .auto-style3 {
            font-size: 15pt;
        }
        .auto-style4 {
            font-size: 15pt;
            color: #000000;
        }
    </style>
</body>
</html>
