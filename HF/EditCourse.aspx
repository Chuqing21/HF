<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditCourse.aspx.cs" Inherits="HF.EditCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
            <div class="title">
            Edit / Delete Course
        </div>
        <br />
        <div class="coursedatabase">
            <table>
                <tr class="table">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="CourseID" HeaderText="CourseID" ReadOnly="True" SortExpression="CourseID" />
                        <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" ItemStyle-Wrap="false" />
                        <asp:BoundField DataField="CoursePrice" HeaderText="CoursePrice" SortExpression="CoursePrice" />
                      
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                </tr>
            </table>
        </div>
        <br />
        <div class="buttons">
            <table class="buttable">
                <tr>
                    <td class="but1">
                        <asp:Button ID="backbutt" runat="server" Text="Back To Profile" CssClass="button-style" PostBackUrl="~/Admin.aspx" />
                    </td>
                    <td class="but2">
                        <asp:Button ID="addbutt" runat="server" Text="Add Course" CssClass="button-style" OnClick="addbutt_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBASGMConnectionString %>"
    SelectCommand="SELECT [CourseID], [CourseName], [CoursePrice] FROM [Course]"
    DeleteCommand="DELETE FROM [Course] WHERE [CourseID] = @CourseID"
    UpdateCommand="UPDATE [Course] SET [CourseName] = @CourseName, [CoursePrice] = @CoursePrice WHERE [CourseID] = @CourseID">
    <DeleteParameters>
        <asp:Parameter Name="CourseID" Type="string" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="CourseName" Type="String" />
        <asp:Parameter Name="CoursePrice" Type="String" />
        <asp:Parameter Name="CourseID" Type="string" />
    </UpdateParameters>
</asp:SqlDataSource>


<style type="text/css">
    .table{
        margin-left: auto;
        margin-right: auto;
    }
    body {
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .title{
        font-size: 20pt;
        text-align:center;
        font-weight: bold;
        color: #006666;
    }
    .coursedatabase{
        text-align:center;
        width: 80%;
        color: #006666;
    }
    .but1{
        width:50pt;
    }

    .but2{
        width:50pt;
    }

    .buttons {
        width: 100%;
        text-align: center;
    }

    .buttable {
        display: inline-block;
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
</style>

    
</asp:Content>