<%@ Page Language="C#"  MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageCourse.aspx.cs" Inherits="HF.ManageCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <div class="backpro">
    <strong>
        <asp:HyperLink ID="backProfile" runat="server" NavigateUrl="~/ProfileAdmin.aspx" CssClass="auto-style2"><  Back to profile</asp:HyperLink>
    </strong>
    </div>
    
            <div class="Table">
                <div class ="Managecourse">
                    <br />
                    <strong>
                    <asp:Label ID="manage" runat="server" Text="Manage Course" CssClass="auto-style1"></asp:Label>
                    </strong>
                </div>

                
                <div class="content">
                     
            <table class="table1" align="center">
                <tr class="img">
                    <td>
                        <asp:ImageButton ID="imgAddCourse" runat="server" Height="80px" ImageUrl="~/ImageFolder/CourseAdd.png" Width="80px" PostBackUrl="~/AddCourse.aspx" />
                    </td>
                    <td>
                        <asp:ImageButton ID="imgEditCourse" runat="server" Height="85px" ImageUrl="~/ImageFolder/CourseRemove.png" Width="85px" PostBackUrl="~/EditCourse.aspx" />
                    </td>
                </tr>
                <tr class="text1">
                    <td class="auto-style4"><strong>Add Course</strong></td>
                    <td class="auto-style4"><strong>Edit/Remove Course</strong></td>
                </tr>
                
            </table>
                
            </div>
            <br />
                <br />
        </div>

<style type="text/css">
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    .back {
        padding-top: 10px;
        padding-bottom: 10px;
        color: #006666;
        text-decoration: none;
        font-size: 12pt;
    }

    

    .Table {
        color: #006666;
    }

    .content {
        display: flex;
        align-items: center;
        justify-content: center;
        padding-top: 35px;
    }
    

    .Managecourse {
        font-size: 25pt;
        text-align: center;
    }

    .table1 {
        text-align: center;
        width: 500pt;
        margin-top: 35px;
        align-items: center;
        justify-content: center;
    }
    

    .img {
        text-align: center;
        width: 250pt;
    }
    
    .text1{
        padding-top: 15px;
        font-size:18pt;
        width: 250pt;
    }
    .auto-style1 {
        font-size: 35pt;
    }
    
    .auto-style2 {
        color: #006666;
        text-decoration: none;
        font-size: 15pt;
    }
    
    .backpro {
        padding-top: 10px;
        padding-bottom: 10px;
        color: #006666;
        text-decoration: none;
        font-size: 12pt;
        text-align: left;
    }

    .auto-style4 {
        padding-top: 15px;
        padding-bottom: 15px;
        color: #006666;
        text-decoration: none;
        font-size: 15pt;
    }
    
</style>

    
</asp:Content>

