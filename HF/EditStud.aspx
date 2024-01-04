<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditStud.aspx.cs" Inherits="HF.EditStud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
            <div class="title">
            Edit / Delete Student
        </div>
        <br />
        <div class="studentdatabase">
            <table>
                <tr class="table">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="sdsStudent">
                    <Columns>
                        <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
                        <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" ItemStyle-Wrap="false" />
                        <asp:BoundField DataField="StudentGender" HeaderText="StudentGender" SortExpression="StudentGender" />
                        <asp:BoundField DataField="StudentEmail" HeaderText="StudentEmail" SortExpression="StudentEmail" />
                        <asp:BoundField DataField="StudentPassword" HeaderText="StudentPassword" SortExpression="StudentPassword" />
                        <asp:BoundField DataField="EmergencyContact" HeaderText="EmergencyContact" SortExpression="EmergencyContact" />
                        <asp:BoundField DataField="ParentName" HeaderText="ParentName" SortExpression="ParentName" />
                        
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
                        <asp:Button ID="addbutt" runat="server" Text="Add Student" CssClass="button-style"  PostBackUrl="~/AddStudent.aspx" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="sdsStudent" runat="server" ConnectionString="<%$ ConnectionStrings:DBASGMConnectionString %>"
    SelectCommand="SELECT [StudentID], [StudentName], [StudentGender], [StudentEmail], [StudentPassword], [EmergencyContact], [ParentName] FROM [Student]"
    DeleteCommand="DELETE FROM [Student] WHERE [StudentID] = @StudentID"
    UpdateCommand="UPDATE [Student] SET [StudentName] = @StudentName, [StudentGender] = @StudentGender, [StudentEmail] = @StudentEmail, [StudentPassword] = @StudentPassword, [EmergencyContact] = @EmergencyContact, [ParentName] = @ParentName WHERE [StudentID] = @StudentID">
    <DeleteParameters>
        <asp:Parameter Name="StudentID" Type="string" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="StudentName" Type="String" />
        <asp:Parameter Name="StudentGender" Type="String" />
        <asp:Parameter Name="StudentEmail" Type="String" />
        <asp:Parameter Name="StudentPassword" Type="String" />
        <asp:Parameter Name="EmergencyContact" Type="String" />
        <asp:Parameter Name="ParentName" Type="String" />
        <asp:Parameter Name="StudentID" Type="string" />
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
    .studentdatabase{
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
