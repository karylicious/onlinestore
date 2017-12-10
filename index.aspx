<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="ID_Artigo" DataSourceID="SqlDataSource1" Height="65px" 
    Width="141px" oninit="GridView2_Init" 
        onselectedindexchanged="GridView2_SelectedIndexChanged">
    <Columns>
        <asp:HyperLinkField DataNavigateUrlFields="ID_Artigo" 
            DataNavigateUrlFormatString="Detalhes.aspx?ID_Artigo={0}" 
            DataTextField="Descricao" />
        <asp:ImageField DataImageUrlField="Imagem" 
            DataImageUrlFormatString="Detalhes.aspx?ID_Artigo={0}">
        </asp:ImageField>
        <asp:BoundField DataField="Preco" HeaderText="Preco" SortExpression="Preco" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    
        SelectCommand="SELECT [Descricao], [Imagem], [Preco], [ID_Categoria], [ID_Artigo] FROM [Artigo] WHERE ([ID_Categoria] = @ID_Categoria)" 
        onselecting="SqlDataSource1_Selecting">
    <SelectParameters>
        <asp:QueryStringParameter Name="ID_Categoria" QueryStringField="cat" 
            Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

