<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProfileStudent.aspx.cs" Inherits="HF.ProfileStudent" %>

<%@ Register Src="~/LoginStatus.ascx" TagPrefix="uc1" TagName="LoginStatus" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="outside">
            <div class="titlestudpro">
                <br />
                <strong>
                    <asp:Label ID="lblStudPro" runat="server" Text="Student Profile" style="margin-bottom:30px; font-size: 35pt; color: #006666;"></asp:Label>
                </strong>
            </div>
            <div class="container">
                <div class="tab">
                    <asp:Button ID="btnProfile" runat="server" Text="Profile" CssClass="btnTab" OnClick="btnProfile_Click" />
                    <asp:Button ID="btnChgPass" runat="server" Text="Change Password"  CssClass="btnTab" OnClick="btnChgPass_Click" />
                    <asp:Button ID="btnViewTime" runat="server" Text="View Timetable"  CssClass="btnTab" OnClick="btnViewTime_Click" />
                    <asp:Button ID="btnEditProfile" runat="server" Text="Edit Profile"  CssClass="btnTab" OnClick="btnEditProfile_Click" />
                </div>
        
                <div class="tabcontent">            
                    <div id="pcontent" runat="server">
                        <strong>
                        <asp:Label ID="lblProfile" runat="server" Text="Student Detail" CssClass="auto-style7" style="color: #006666"></asp:Label>
                        </strong>
                        
                        <table class="content1">
                            <tr>
                                <td class="contentdetail"><asp:Label ID="lblStudID" runat="server" Text="Student ID"></asp:Label></td>
                                <td class="contentdetail"><asp:Label ID="StudentID" runat="server"></asp:Label></td>
                            </tr>
    
                            <tr>
                                <td class="contentdetail"><asp:Label ID="lblStudName" runat="server" Text="Student Name"></asp:Label></td>
                                <td class="contentdetail"><asp:Label ID="lblGetName" runat="server"></asp:Label></td>
                            </tr>
   
                            <tr>
                                <td class="contentdetail"><asp:Label ID="lblEmail" runat="server" Text="Student Email"></asp:Label></td>
                                <td class="contentdetail"><asp:Label ID="lblGetEmail" runat="server" ></asp:Label></td>
                            </tr>
    
    
                            <tr>
                                <td class="contentdetail"><asp:Label ID="lblEmerConc" runat="server" Text="Emergency Contact Number"></asp:Label></td>
                                <td class="contentdetail"><asp:Label ID="lblGetECN" runat="server"></asp:Label></td>
                            </tr>
    
    
                            <tr>
                                <td class="contentdetail"><asp:Label ID="lblPName" runat="server" Text="Parent Name"></asp:Label></td>
                                <td class="contentdetail"><asp:Label ID="lblGetPName" runat="server"></asp:Label></td>
                            </tr>
                        </table>
                                                
                    </div>
                    
                    <div id="cpcontent" runat="server">
    
                        <strong>
                            <asp:Label ID="lblChgPass" runat="server" Text="Change Password" style="color: #006666; font-weight: bold"></asp:Label>
                        </strong>
                        <br />
                        <br />

                        <table class="content2">
                            <tr>
                                <td align="left" class="chgpwd">
                                    <asp:Label ID="Label1" runat="server" Text="Current Password"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCurPwd" runat="server" TextMode="Password" Height="25px" Width="170px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Must Enter Current Password" ControlToValidate="txtCurPwd" ForeColor="Red" ValidationGroup="ChangePwdGroup" CssClass="auto-style14">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="chgpwd">
                                    <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password" Height="25px" Width="170px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="Must Enter New Password" ForeColor="Red" ValidationGroup="ChangePwdGroup" CssClass="auto-style14">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="Password Must Contain 1 Capital Letter, 1 Number, 1 Special Character and at least 8" ForeColor="Red" ValidationExpression="^(?=.*[A-Z])(?=.*[!@#$%^&amp;*(),.?&quot;&quot;{}|&lt;&gt;])(?=.*[0-9]).{8,}$" ValidationGroup="ChangePwdGroup" CssClass="auto-style14">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="chgpwd">
                                    <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                                </td>
                        
                                <td>
                                    <asp:TextBox ID="txtConPwd" runat="server" TextMode="Password" Height="25px" Width="170px" EnableTheming="True"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConPwd" ErrorMessage="Must Enter Comfirm Password" ForeColor="Red" ValidationGroup="ChangePwdGroup" CssClass="auto-style14">*</asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPwd" ControlToValidate="txtConPwd" ErrorMessage="Comfirm Password Must Match with New Password" ForeColor="Red" ValidationGroup="ChangePwdGroup" CssClass="auto-style14">*</asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="color:Red;" class="auto-style1">
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style2" ForeColor="Red" HeaderText="The following errors have been detected:" ValidationGroup="ChangePwdGroup" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="chgpwd">
                                   
                                    <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" CssClass="btnleft" Height="25px" Width="150px" OnClick="btnChangePassword_Click" ValidationGroup="ChangePwdGroup" />
                                </td>
                                <td>
                                    <asp:Button ID="btnCancelChange" runat="server" Text="Cancel" CssClass="btnright" Height="25px" Width="150px" OnClick="btnCancelChange_Click"/>
                                </td>
                            </tr>
                        </table>

                    </div>
            
                    <div id="timecontent" runat="server">
                        <strong>
                            <asp:Label ID="lblTimetable" runat="server" Text="Timetable" style="color: #006666; font-weight: bold"></asp:Label>
                        </strong>
                       
                        <table class="content3">
                            <tr>
                                <td class="contenttimetable"><asp:Label ID="lblDay1" runat="server" Text="[Day1]" style="color: #006666;"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="contenttimetable"><asp:Label ID="lblTime1" runat="server" Text="[Time]"></asp:Label></td>
                                <td><asp:Label ID="lblCourse1" runat="server" Text="[Course1]"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="contenttimetable"><asp:Label ID="lblDay2" runat="server" Text="[Day2]" style="color: #006666;"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="contenttimetable"><asp:Label ID="lblTime2" runat="server" Text="[Time2]"></asp:Label></td>
                                <td><asp:Label ID="lblCourse2" runat="server" Text="[Course2]"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="contenttimetable"><asp:Label ID="lblDay3" runat="server" Text="[Day3]" style="color: #006666;"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="contenttimetable"><asp:Label ID="lblTime3" runat="server" Text="[Time3]"></asp:Label></td>
                                <td><asp:Label ID="lblCourse3" runat="server" Text="[Course3]"></asp:Label></td>
                            </tr>
                        </table>
                    </div>
            
                    <div id="editcontent" runat="server">
                
                        <strong>
                            <asp:Label ID="Label6" runat="server" Text="Edit Profile" style="color: #006666; font-weight: bold"></asp:Label>
                        </strong>
                        <table class="content4">
    
                            <tr>
                                <td class="auto-style11"><asp:Label ID="lblEditEmail" runat="server" Text="Email"></asp:Label></td>
                                <td class="auto-style10"><asp:TextBox ID="txtEditEmail" runat="server" Width="170px" Height="25px"></asp:TextBox></td>
                                <td class="rightcolum"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEditEmail" ForeColor="Red" ValidationGroup="EditProfile" CssClass="auto-style14">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEditEmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="EditProfile" CssClass="auto-style14">*Invalid Email</asp:RegularExpressionValidator></td>
                            </tr>
                            
                            <tr>
                                <td class="auto-style11"><asp:Label ID="lblEmCt" runat="server" Text="Emergency Contact"></asp:Label></td>
                                <td class="auto-style10"><asp:TextBox ID="txtEditContact" runat="server" Width="170px" Height="25px"></asp:TextBox></td>
                                <td class="leftcolum"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEditContact" ForeColor="Red" ValidationGroup="EditProfile" CssClass="auto-style14">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEditContact" ErrorMessage="Must contain 10-digit and in format of (012-3456789)" ForeColor="Red" ValidationExpression="^01\d{8,9}$" ValidationGroup="EditProfile" CssClass="auto-style14">*Invalid Contact Number</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            
                            <tr>
                                <td class="auto-style11"><asp:Label ID="lblParentName" runat="server" Text="Parent Name"></asp:Label></td>
                                <td class="auto-style10"><asp:TextBox ID="txtEditParentName" runat="server" Width="170px" Height="25px"></asp:TextBox> </td>
                                <td class="rightcolum"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEditParentName" ForeColor="Red" ValidationGroup="EditProfile" CssClass="auto-style14">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEditParentName" ErrorMessage="*Invalid Name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="EditProfile" CssClass="auto-style14">*Invalid Name</asp:RegularExpressionValidator></td>
                            </tr>
                            <tr>
                                <td class="auto-style5"><asp:Button ID="btnSaveEdit" runat="server" Text="Save" Height="25px" Width="130px" CssClass="btnleft" OnClick="btnSaveEdit_Click" ValidationGroup="EditProfile"/></td>
                                <td class="auto-style9"><asp:Button ID="btnCancelEdit" runat="server" Text="Cancel" Height="25px" Width="130px" CssClass="btnright" OnClick="btnCancelEdit_Click" /></td>
                            </tr>
                            
                        </table>
                    </div>
                </div>
            </div>

            <div>
                <br />
                <uc1:LoginStatus runat="server" ID="LoginStatus" />
                <br />
            </div>
        </div>

<style>
    *{
        margin:0;
        padding:0;
        box-sizing:border-box;
        font-family:'Poppins', sans-serif;
    }

    .titlestudpro {
        text-align: center;
        width: 900px;
        padding-bottom: 40px;
    }

    .container {
        border-radius: 25px;
        margin-bottom: 30px;
        margin-left: 20px;
        margin-right: 20px;
        color: white;
        font-size: 15pt;
        font-weight: 500;
        background-color: #6B9B90;
        height: 65%;
        width: 900px;
        box-shadow: 0 2px 16px rgba(0,0,0,.1);
        padding: 30px;
        grid-template-columns: 1fr 1fr;
        grid-gap: 40px;
    }

    .outside {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }
    
    .tab{
        width:100%;
        display:flex;
        justify-content:space-around;
        align-items:center;
        border-bottom:2px solid rgba(229,229,229);
    }

    #pcontent{
        text-align:left;
        margin-left:30px;
        padding-bottom:30px;
    }

    #cpcontent {
        text-align: left;
        margin-left: 30px;
        padding-bottom: 30px;
    }

    #timecontent {
        text-align: left;
        margin-left: 30px;
        padding-bottom: 30px;
    }

    .tab .btnTab{
        font-size:15pt;
        font-weight:500;
        color: white;
        background-color:#6B9B90;
        border:none;
        padding:15px;
        cursor:pointer;
    }

    .tab .btnTab:hover{
        background-color:#E5DDE8;
        color:#6B9B90;
        border-top-right-radius: 10px; 
        border-top-left-radius: 10px;
    }

    .tab .btnTab:active{
        background-color:#E5DDE8;
        color:#6B9B90;
    }

    .tabcontent{
        padding:20px;
    }

    .container .button1{
        background-color:transparent;
        border: 2px solid #6B9B90;
        outline:none;
        border-radius:6px;
        cursor:pointer;
        font-size:1em;
        color:#6B9B90;
        font-weight:500;
        transition:0.5s;
        position: absolute;
        left: 50%;
        -ms-transform: translate(80%, -50%);
        transform: translate(80%, -50%);
        margin-top:70px;
        margin-bottom:50px;
        height: 49px;
        width: 210px;
    }

    .container .button1:hover{
        background:#6B9B90;
        color:#fff;
    }

    #editcontent {
        text-align: left;
        margin-left: 30px;
        padding-bottom: 30px;
        margin-top: 50px;
    }

    .btnleft {
        font-size: 12pt;
        border: 2px solid #006666;
        outline: none;
        border-radius: 6px;
        cursor: pointer;
        background-color: #006666;
        color: white;
        font-weight: 500;
        left: 50%;
        margin: 10px 20px;
    }

    .btnright {
        border: 2px solid white;
        outline: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 12pt;
        background-color: white;
        color: #006666;
        font-weight: 500;
        left: 50%;
        margin: 10px 20px;
    }
      
    .content1 {
        width: 500px;
        margin-top: 20px;
    }


    .contentdetail {
        height: 25px;
        padding-top: 10px;
        padding-bottom: 10px;
    }

    .content2 {
        width: 500px;
        margin-top: 20px;
    }

    .chgpwd {
        height: 25px;
        padding-top: 10px;
        padding-bottom: 10px;
    }

    .content3 {
        width: 500px;
        margin-top: 20px;
    }

    .contenttimetable {
        height: 25px;
        padding-top: 10px;
        padding-bottom: 10px;
    }

    .content4 {
        width: 605px;
        margin-top: 20px;
    }

    .leftcolum {
        width: 30%;
        height: 25px;
        padding-top: 10px;
        padding-bottom: 10px;
    }

    .middlecolum {
        width: 40%;
        height: 25px;
        padding-top: 10px;
        padding-bottom: 10px;
    }

    .rightcolum {
    width: 30%;
    height: 25px;
    padding-top: 10px;
    padding-bottom: 10px;
}

    .btncancel {
        width: 50%;
        align-content: center;
        text-align: left;
    }

    .btnsave {
        width: 50%;
        align-content: center;
        text-align: right;
    }
      
    .auto-style1 {
        text-align: left;
    }

    .auto-style2 {
        font-size: 12pt;
    }
      
    .auto-style5 {
        width: 34%;
        align-content: center;
        text-align: right;
    }

    .auto-style7 {
        width: 40%;
    }

    .auto-style9 {
        width: 21%;
    }

    .auto-style10 {
        width: 21%;
        height: 25px;
        padding-top: 10px;
        padding-bottom: 10px;
    }
      
    .auto-style11 {
        width: 34%;
        height: 25px;
        padding-top: 10px;
        padding-bottom: 10px;
    }

    .auto-style14 {
        font-size: 12pt;
    }


</style>

    
</asp:Content>