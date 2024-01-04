<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" EnableViewState="true" CodeBehind="StudentRegister.aspx.cs" Inherits="HF.StudentRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
         
    <div class="">
                
        <div class="titlereg">
            <br />
            <strong>
                <asp:Label ID="lbltitle" runat="server" Text="Student Register" CssClass="auto-style1"></asp:Label>
            </strong>
            <br />
            <br />
            <asp:ImageButton ID="imgStudent" runat="server" CssClass="image" ImageUrl="~/ImageFolder/Student.png"  Height="100px" />
            <br />
            <br />
        </div>
                
        <div class="regform" align="center">
            <table class="container" align="center">
                
                <tr>
                    <td class="content1"><asp:Label ID="lblStudID" runat="server" Text="Student ID"></asp:Label></td>
                    <td class="auto-style12"><asp:TextBox ID="txtStudID" runat="server" BackColor="#CCCCCC" ReadOnly="True" Height="25px" Width="200px"></asp:TextBox></td>
                </tr>
       
                <tr>
                    <td class="content1"></td>
                    <td class="auto-style12"><asp:RegularExpressionValidator ID="vldSName" runat="server" ControlToValidate="txtStudName" Display="Dynamic" ErrorMessage="Only Characters" ForeColor="#CC3300" ValidationExpression="^[A-Za-z\s]+$" CssClass="auto-style10">Only Characters</asp:RegularExpressionValidator></td>
                    <td class="auto-style15"></td>
                </tr>
       
                <tr>
                    <td class="content1"><asp:Label ID="lblStudN" runat="server" Text="Student Name"></asp:Label></td>
                    <td  class="auto-style12"><asp:TextBox ID="txtStudName" runat="server" BackColor="#CCCCCC" Height="25px" Width="200px"  ></asp:TextBox></td>
                    <td class="auto-style5"><asp:RequiredFieldValidator ID="vldStudN" runat="server" ErrorMessage="Mandatory" ControlToValidate="txtStudName" Display="Dynamic"  ForeColor="#CC3300">*</asp:RequiredFieldValidator></td>
                </tr>
       
                <tr>
                    <td class="content1"></td>
                    <td  class="auto-style12"><asp:RegularExpressionValidator ID="vldEmailFormat" runat="server" ControlToValidate="txtEmail" Display="Dynamic" EnableTheming="False" ErrorMessage="Invalid Email Format" ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style10">Invalid Format (xxx@xxx.com)</asp:RegularExpressionValidator></td>
                    <td class="auto-style15"></td>
                </tr>
       
                <tr>
                    <td class="content1"><asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label></td>
                    <td class="auto-style12"><asp:TextBox ID="txtEmail" runat="server" BackColor="#CCCCCC" TextMode="Email" Height="25px" Width="200px"></asp:TextBox></td>
                    <td class="auto-style5"><asp:RequiredFieldValidator ID="vldEmail" runat="server" ErrorMessage="Mandatory" Display="Dynamic" ForeColor="#CC3300" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator></td>
                </tr>
       
                <tr>
                    <td class="content1"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style15"></td>
                </tr>

                <tr>
            
                    <td class="content1"><asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label></td>
                    <td class="auto-style12">
                        <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" >
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style5"><asp:RequiredFieldValidator ID="vldGender" runat="server" ErrorMessage="Select A Gender" ControlToValidate="rblGender" Display="Dynamic" ForeColor="#CC3300">*</asp:RequiredFieldValidator></td>
                </tr>
       
                <tr>
                    <td class="content1"></td>
                    <td class="auto-style12"><asp:RegularExpressionValidator ID="vldPsw" runat="server" ControlToValidate="txtPsw" Display="Dynamic" ErrorMessage="Password must contain 1 Capital Letter, 1 Number, 1 Special Character and at least 8 " ForeColor="#CC3300" ValidationExpression="^(?=.*[A-Z])(?=.*[!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;])(?=.*[0-9]).{8,}$" CssClass="auto-style10">Invalid Format (A1@12345) Atleast 8 Characters</asp:RegularExpressionValidator></td>
                    <td class="auto-style15"></td>
                </tr>
       
                <tr>
                    <td class="content1"><asp:Label ID="lblPsw" runat="server" Text="Password"></asp:Label></td>
                    <td  class="auto-style12"><asp:TextBox ID="txtPsw" runat="server" BackColor="#CCCCCC" TextMode="Password" Height="25px" Width="200px"  ></asp:TextBox></td>
                    <td class="auto-style5"><asp:RequiredFieldValidator ID="vldPsw1" runat="server" ErrorMessage="Enter A Password" ControlToValidate="txtPsw" Display="Dynamic" ForeColor="#CC3300">*</asp:RequiredFieldValidator></td>
                </tr>
       
                <tr>
                    <td class="content1"></td>
                    <td class="auto-style12"><asp:CompareValidator ID="vldPsw2" runat="server" ControlToCompare="txtPsw" ControlToValidate="txtConfPsw" Display="Dynamic" ErrorMessage="Password Mismatched" ForeColor="#CC3300" SetFocusOnError="True" CssClass="auto-style10">Password Mismatched</asp:CompareValidator></td>
                    <td class="auto-style15"></td>
                </tr>
                       
                <tr>
                    <td class="content1"><asp:Label ID="lblConfPsw" runat="server" Text="Confirmed Password"></asp:Label></td>
                    <td class="auto-style12"><asp:TextBox ID="txtConfPsw" runat="server" BackColor="#CCCCCC" TextMode="Password" Height="25px" Width="200px"></asp:TextBox></td>
                    <td class="auto-style5"><asp:RequiredFieldValidator ID="vldCPsw" runat="server" ErrorMessage="Enter Confirmed Password" ControlToValidate="txtConfPsw" Display="Dynamic" ForeColor="#CC3300">*</asp:RequiredFieldValidator></td>
                </tr>
       
                <tr>
                    <td class="content1"></td>
                    <td class="auto-style12"><asp:RegularExpressionValidator ID="vldPName" runat="server" ControlToValidate="txtParentName" Display="Dynamic" ErrorMessage="Only Characters" ForeColor="#CC3300" ValidationExpression="^[A-Za-z\s]+$" CssClass="auto-style10">Only Characters</asp:RegularExpressionValidator></td>
                    <td class="auto-style15"></td>
                </tr>
       
                <tr>
                    <td class="content1"><asp:Label ID="lblParentName" runat="server" Text="Parent Name"></asp:Label></td>
                    <td class="auto-style12"><asp:TextBox ID="txtParentName" runat="server" BackColor="#CCCCCC" Height="25px" Width="200px"></asp:TextBox></td>
                    <td class="auto-style5"><asp:RequiredFieldValidator ID="vldParentN" runat="server" ErrorMessage="Mandatory" Display="Dynamic" ForeColor="#CC3300" ControlToValidate="txtParentName">*</asp:RequiredFieldValidator></td>
                </tr>
       
                <tr>
                    <td class="content1"></td><td  class="auto-style12"><asp:RegularExpressionValidator ID="vldPContact" runat="server" ControlToValidate="txtParentContact" Display="Dynamic" ErrorMessage="Invalid Number" ForeColor="#CC3300" ValidationExpression="^01\d{8,9}$" CssClass="auto-style10">Invalid Number (0123456789)</asp:RegularExpressionValidator></td>
                    <td class="auto-style15"></td>
                </tr>
    
                <tr>
                    <td class="content1"><asp:Label ID="lblParentContact" runat="server" Text="Parent Contact"></asp:Label></td>
                    <td  class="auto-style12"><asp:TextBox ID="txtParentContact" runat="server" BackColor="#CCCCCC" Height="25px" Width="200px"></asp:TextBox></td>  
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="vldParentC" runat="server" ErrorMessage="Mandatory" Display="Dynamic" ForeColor="#CC3300" ControlToValidate="txtParentContact">*</asp:RequiredFieldValidator>
                    </td>

                </tr>
            </table>

        </div>
                      
        <div>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style14"><asp:RadioButtonList ID="rblTerm" runat="server" CssClass="auto-style9" RepeatDirection="Horizontal" Width="130px">
                        <asp:ListItem CssClass="auto-style9">I agree to the </asp:ListItem>
                        </asp:RadioButtonList> 
                    </td>
                    <td class="auto-style9"><strong><asp:HyperLink ID="hypTerm" runat="server" CssClass="hplTerm" NavigateUrl="~/TermConditionReg.aspx" style="color: #006666" ><u>Terms &amp; Conditions</u></asp:HyperLink>
                        </strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Compulsory" Display="Dynamic" ForeColor="#CC3300" ControlToValidate="rblTerm">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
           
            </table>
            
        </div>

        <div align="center" class="btnclass">
            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="auto-style16" OnClick="btnRegister_Click" Height="35px" Width="120px" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="auto-style17" OnClick="btnReset_Click" Height="35px" Width="120px" />
            <br />
        </div>

        <div align="center">
            <asp:Label ID="lblStudent" runat="server" Text="lblStudent" Visible="False"></asp:Label>
            <br />
            <asp:HyperLink ID="HypLogin" runat="server" NavigateUrl="~/LoginStudent.aspx">Go To Login</asp:HyperLink>
        </div>
           
    </div>
       
   <style type="text/css">
     * {
         margin: 0;
         padding: 0;
         box-sizing: border-box;
         font-family: 'Poppins', sans-serif;
     }
     

     .titlereg {
         text-align: center;
         padding-bottom: 10px;
     }

       .container {
           display: flex;
           align-items: center;
           justify-content: center;
           border-radius: 25px;
           font-size: 15pt;
           text-align: left;
           width: 470px;
           background-color: transparent;
           box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
           border: 2px solid #006666;
           color: #006666;
           padding: 25px 25px;
       }

       .content1 {
           width: 50%;
       }

       

     .auto-style1 {
         font-size: 35pt;
         color: #006666;
     }

       .auto-style3 {
           margin-left: 39.5%;
           margin-top: 25px;
       }

       .auto-style9 {
           font-size: 15px;
       }

     .content2 {
         width: 38%;
     }

     .container2 {
         display: flex;
         flex-direction: column;
         align-items: center;
         justify-content: center;
         text-align: left;
         background-color: transparent;
         margin-bottom: 25px;
     }



   


     .auto-style5 {
           height: 53px;
           width: 343px;
       }
  
 
       .auto-style10 {
           font-size: 12pt;
       }       
 
       .auto-style14 {
           width: 110px;
       }

       .auto-style12 {
           width: 37%;
       }

       .auto-style15 {
           width: 343px;

       }

       .auto-style16 {
           background-color: transparent;
           border: 2px solid #006666;
           outline: none;
           border-radius: 6px;
           cursor: pointer;
           color: #006666;
           font-weight: 500;
           transition: 0.5s;
           -ms-transform: translate(-27%, -50%);
           transform: translate(-27%, -50%);
           font-size: 12pt;
           margin-left: 220px;
       }
       

       .auto-style17 {
           background-color: #006666;
           border: 2px solid #006666;
           outline: none;
           border-radius: 6px;
           cursor: pointer;
           color: white;
           font-weight: 500;
           transition: 0.5s;
           -ms-transform: translate(150%, -50%);
           transform: translate(150%, -50%);
           font-size: 12pt;
           margin-right: 270px;
       }

       .btnclass {
           margin: 25px 340px;
           display: flex;
           align-items: center;
           justify-content: center;
       }
       

 
 </style>


</asp:Content>
