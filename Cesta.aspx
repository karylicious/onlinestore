<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cesta.aspx.cs" Inherits="Cesta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" Width="364px">
    <Columns>
        <asp:CommandField DeleteText="Excluir" ShowDeleteButton="True" />
        <asp:BoundField DataField="Descricao" HeaderText="Descricao" 
            SortExpression="Descricao" />
        <asp:BoundField DataField="Imagem" HeaderText="Imagem" 
            SortExpression="Imagem" />
        <asp:BoundField DataField="Preco" HeaderText="Preco" SortExpression="Preco" />
    </Columns>
</asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="ButtonEndBuy" runat="server" Text="Encerrar compras" 
    onclick="ButtonEndBuy_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button2" runat="server" Text="Continuar compra" 
    onclick="Button2_Click" />
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [Preco], [Descricao], [Imagem] FROM [Artigo]">
</asp:SqlDataSource>
</asp:Content>

