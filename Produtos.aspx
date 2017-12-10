<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Produtos.aspx.cs" Inherits="Running" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/images/ksks.gif" 
    Height="28px">
    <asp:Label ID="Label1" runat="server" Text="Todos os produtos" 
        Font-Names="Tahoma" Font-Size="Large" ForeColor="White"></asp:Label>
</asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Descricao], [Imagem], [Preco] FROM [Artigo] WHERE ([ID_Categoria] = @ID_Categoria)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID_Categoria" QueryStringField="ID" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        RepeatColumns="2" RepeatDirection="Horizontal" Width="305px" >
        
        <ItemTemplate>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="DescricaoLabel" runat="server" 
                Text='<%# Eval("Descricao") %>' CssClass="item_name" 
                NavigateUrl="~/Detalhes.aspx" />
            <br />
            <asp:Image ID="ImagemLabel" runat="server" 
                Text='<%# Eval("Imagem") %>' Height="100px" Width="120px" />
            &nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;<asp:Label ID="PrecoLabel" runat="server" Text='<%# Eval("Preco") %>' 
                CssClass="item_price" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButtonInfo" runat="server" 
                ImageUrl="~/images/os3_info.gif" PostBackUrl="~/Detalhes.aspx" />
            <asp:ImageButton ID="ImageButtonBuy" runat="server" 
                ImageUrl="~/images/os3_buy.gif" onclick="ImageButton4_Click" />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

