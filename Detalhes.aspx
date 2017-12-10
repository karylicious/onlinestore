<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Detalhes.aspx.cs" Inherits="Detalhes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/images/ksks.gif" 
    Height="28px">
    <asp:Label ID="Label1" runat="server" 
        Font-Names="Tahoma" Font-Size="Large" ForeColor="White"></asp:Label>
</asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
    SelectCommand="SELECT [Descricao], [Imagem], [Preco], [Detalhe] FROM [Artigo] WHERE ([ID_Artigo] = @ID_Artigo)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID_Artigo" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2" 
        Height="276px" DataKeyNames="ID_Artigo">
        <EditItemTemplate>
            Descricao:
            <asp:TextBox ID="DescricaoTextBox" runat="server" 
                Text='<%# Bind("Descricao") %>' />
            <br />
            Imagem:
            <asp:TextBox ID="ImagemTextBox" runat="server" Text='<%# Bind("Imagem") %>' />
            <br />
            Preco:
            <asp:TextBox ID="PrecoTextBox" runat="server" Text='<%# Bind("Preco") %>' />
            <br />
            ID_Artigo:
            <asp:Label ID="ID_ArtigoLabel1" runat="server" 
                Text='<%# Eval("ID_Artigo") %>' />
            <br />
            Detalhe:
            <asp:TextBox ID="DetalheTextBox" runat="server" Text='<%# Bind("Detalhe") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Descricao:
            <asp:TextBox ID="DescricaoTextBox" runat="server" 
                Text='<%# Bind("Descricao") %>' />
            <br />
            Imagem:
            <asp:TextBox ID="ImagemTextBox" runat="server" Text='<%# Bind("Imagem") %>' />
            <br />
            Preco:
            <asp:TextBox ID="PrecoTextBox" runat="server" Text='<%# Bind("Preco") %>' />
            <br />
            Detalhe:
            <asp:TextBox ID="DetalheTextBox" runat="server" Text='<%# Bind("Detalhe") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            &nbsp;<asp:Label ID="DescricaoLabel" runat="server" CssClass="item_name" 
                Text='<%# Bind("Descricao") %>' />
            <br />
            <asp:Image ID="ImagemLabel" runat="server" ImageUrl='<%# Eval("Imagem") %>' 
                Height="100px" Width="107px" />
            <br />
            &nbsp;<asp:Label ID="PrecoLabel" runat="server" CssClass="item_price" 
                Text='<%# Bind("Preco") %>' />
            <br />
            <asp:ImageButton ID="ImageButtonBuy" runat="server" 
                ImageUrl="~/images/buyitem.bmp" onclick="ImageButtonBuy_Click" />
            <asp:ImageButton ID="ImageButtonAddItem" runat="server" 
                ImageUrl="~/images/additem.jpg" onclick="ImageButtonAddItem_Click" />
            <br />
            <br />
            ID_Artigo:&nbsp;<asp:Label ID="ID_ArtigoLabel" runat="server" 
                Text='<%# Eval("ID_Artigo") %>' />
            <br />
            <asp:Label ID="Label3" runat="server" CssClass="item_price" 
                Text="Características"></asp:Label>
            &nbsp;<br /> <asp:Label ID="DetalheLabel" runat="server" CssClass="item_desc" 
                Text='<%# Bind("Detalhe") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Descricao], [Imagem], [Preco], [ID_Artigo], [Detalhe] FROM [Artigo] WHERE ([ID_Artigo] = @ID_Artigo)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID_Artigo" QueryStringField="ID_Artigo" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

