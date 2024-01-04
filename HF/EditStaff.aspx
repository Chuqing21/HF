<%@ Page Language="C#"  MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditStaff.aspx.cs" Inherits="HF.EditStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
            <br />
        <div class="titlestaff">
            Edit / Delete Staff
        </div>
        <br />
        <div class="staffdatabase">
            <table>
                <tr class="table">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StaffID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="StaffID" HeaderText="StaffID" ReadOnly="True" SortExpression="StaffID" />
                        <asp:BoundField DataField="StaffName" HeaderText="StaffName" SortExpression="StaffName" ItemStyle-Wrap="false" />
                        <asp:BoundField DataField="StaffGender" HeaderText="StaffGender" SortExpression="StaffGender" />
                        <asp:BoundField DataField="StaffEmail" HeaderText="StaffEmail" SortExpression="StaffEmail" />
                        <asp:BoundField DataField="HireDate" HeaderText="HireDate" SortExpression="HireDate" />
                        <asp:BoundField DataField="TeachingExperience" HeaderText="TeachingExperience" SortExpression="TeachingExperience" />
                        <asp:BoundField DataField="TeachingArea" HeaderText="TeachingArea" SortExpression="TeachingArea" />
                        <asp:BoundField DataField="EducationBackground" HeaderText="EducationBackground" SortExpression="EducationBackground" />
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
                        <asp:Button ID="backbutt" runat="server" Text="Back To Profile" CssClass="button-style" />
                    </td>
                    <td class="but2">
                        <asp:Button ID="addbutt" runat="server" Text="Add Staff" CssClass="button-style" OnClick="addbutt_Click" PostBackUrl="~/AddStaff.aspx" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBASGMConnectionString %>"
    SelectCommand="SELECT [StaffID], [StaffName], [StaffGender], [StaffEmail], [StaffPassword], [HireDate], [TeachingExperience], [TeachingArea], [EducationBackground] FROM [Staff]"
    DeleteCommand="DELETE FROM [Staff] WHERE [StaffID] = @StaffID"
    UpdateCommand="UPDATE [Staff] SET [StaffName] = @StaffName, [StaffGender] = @StaffGender, [StaffEmail] = @StaffEmail, [HireDate] = @HireDate, [TeachingExperience] = @TeachingExperience, [TeachingArea] = @TeachingArea, [EducationBackground] = @EducationBackground WHERE [StaffID] = @StaffID">
    <DeleteParameters>
        <asp:Parameter Name="StaffID" Type="string" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="StaffName" Type="String" />
        <asp:Parameter Name="StaffGender" Type="String" />
        <asp:Parameter Name="StaffEmail" Type="String" />
        <asp:Parameter Name="HireDate" Type="String" />
        <asp:Parameter Name="TeachingExperience" Type="String" />
        <asp:Parameter Name="TeachingArea" Type="String" />
        <asp:Parameter Name="EducationBackground" Type="String" />
        <asp:Parameter Name="StaffID" Type="string" />
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
    .titlestaff {
        font-size: 20pt;
        text-align:center;
        font-weight: bold;
        color: #006666;
    }
    .staffdatabase{
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
