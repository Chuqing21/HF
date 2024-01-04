<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Enroll.aspx.cs" Inherits="HF.Enroll" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DBASGMConnectionString %>' SelectCommand=""></asp:SqlDataSource>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
          <ItemTemplate>
              Course ID:<%#Eval("CourseID") %>
              <br /><%#Eval("CourseName") %>
              <br />RM<%#Eval("CoursePrice") %>/year
              <br />
              <br />
              <%#Eval("CourseDescription") %>
              <br />

          </ItemTemplate>
    </asp:Repeater>
    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
</div>
    
</asp:Content>
