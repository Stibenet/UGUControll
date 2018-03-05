<%@ Page Title="Домашняя страница" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<table border="0" cellpadding="4" cellspacing="0" align="center" 
        style="width: 621px; height: 450px">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Добавление новой задачи"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Имя:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Width="439px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="Описание:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="439px" 
                                    Height="170px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Исполнитель:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="432px"></asp:TextBox>
                            </td>
                        </tr>
  <%--                      <tr>
                            <td colspan="2" class="style1">
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Запомнить мои данные?" />
                            </td>
                        </tr>--%>
                        <tr>
                            <td colspan="2" style="text-align:right">
                                <asp:Button ID="Button1" runat="server" Text="Добавить" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>

</asp:Content>