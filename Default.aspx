<%@ Page Title="Домашняя страница" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 style="height: 31px">
        Список задач</h2>
<h2 style="height: 31px">
        <asp:RadioButton ID="RadioButton1" runat="server" 
            oncheckedchanged="RadioButton1_CheckedChanged" Text="Квартал" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" 
            oncheckedchanged="RadioButton2_CheckedChanged" Text="Полугодие" />
</h2>
    <h2 style="height: 31px">
        <asp:GridView ID="GridView1" runat="server" Height="288px" Width="913px" 
            AutoGenerateColumns="False" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            AllowSorting="True" CellPadding="4" DataSourceID="ListTaskss" 
            GridLines="Vertical" ForeColor="Black" BackColor="White" 
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField HeaderText="name" DataField="name" SortExpression="name" >
                <ControlStyle Width="200px" />
                </asp:BoundField>
                <asp:BoundField HeaderText="text" DataField="text" SortExpression="text" />
                <asp:BoundField HeaderText="executor" DataField="executor" 
                    SortExpression="executor" />
                <asp:BoundField HeaderText="data" DataField="data" SortExpression="data" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="ListTaskss" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [name], [text], [executor], [data] FROM [ListTaskss]">
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Добавить" 
            onclick="Button1_Click" />
    </h2>
    <h2 style="height: 31px">
        &nbsp;</h2>

</asp:Content>
