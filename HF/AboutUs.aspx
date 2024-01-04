<%@ Page Language="C#" MasterPageFile="~/Site1.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="HF.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <div>
        <div class="title">
            <br />
            <asp:Label ID="lblWelcome" runat="server" Text="About Us" Font-Bold="True" Font-Size="35pt" CssClass="pgtitle"></asp:Label>
        </div>

        <div class="form">     
            <div class="formcontent1">
                <asp:Label ID="lblAboutUs" runat="server" Text="Welcome To A+ Education" Font-Bold="True" Font-Size="15pt" CssClass="content1"></asp:Label>
                <br />
                <asp:Label ID="lblContent1" runat="server" Font-Size="12pt" Text="At A+ Education, we believe in nurturing young minds and laying the foundation for a lifetime of learning.<br /><br />Our dedicated team of educators is committed to providing exceptional primary tuition that goes beyond the textbooks, fostering a love for learning that lasts a lifetime."></asp:Label>
            </div>
            <div class="formcontent2">
                <asp:Label ID="lblCourse" runat="server" Text="Course We Provide" Font-Bold="True" Font-Size="15pt" CssClass="content2"></asp:Label>
                <br />
                <asp:Label ID="lblContent2" runat="server" Font-Size="12pt" Text="English<br/>Bahasa Malaysia<br/>Chinese<br/>Mathematic<br/>Science<br/>History"></asp:Label>
            </div>
            <div class="formcontent2">
                <asp:Label ID="lblJoinUs" runat="server" Text="Join Us on the Journey" Font-Bold="True" Font-Size="15pt" CssClass="content2"></asp:Label>
                <br />
                <asp:Label ID="lblContent3" runat="server" Font-Size="12pt" Text="We invite you to join us on the journey of educational discovery. 
                    <br/><br/>Whether your child needs extra support in a specific subject or is eager to excel beyond the classroom, we are here to guide them every step of the way.
                    <br/><br/>Contact us today to learn more about our programs and how we can help student reach their full potential."></asp:Label>
                <br />
                <br />
                <strong>
                <asp:Label ID="lblContent4" runat="server" Text="Contact Number: +6019 2634152 (Ms Ng)<br />Email: aPlus@gmail.com"></asp:Label>
                </strong>
            </div>
        </div>
    </div>
    
    <style>
        .title {
            text-align: center;
            padding-bottom: 40px;
        }


        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }


        .form {
            display: flex;
            flex-direction: column;
            justify-content: left;
            align-items: flex-start;
            padding-top: 20px;
            height: 600px;
            max-width: 900px;
            background-color: white;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            border: 2px solid #006666;
            color: #006666;
            margin: 0 auto;
            margin-bottom: 50px;
        }


        content {
            padding: 25px 10px;
            text-align: justify;
        }


        .content1 {
            font-size: 20pt;
            color: #006666;
        }


        .pgtitle {
            color: #006666;
        }


        .formcontent1 {
            justify-content: left;
            padding: 25px 10px;
            text-align: justify;
        }


        .formcontent2 {
            justify-content: left;
            padding: 25px 10px;
        }

    </style>

</asp:Content>

