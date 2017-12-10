<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GerirProd.aspx.cs" Inherits="GerirProd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/images/ksks.gif" 
    Height="28px">
    <asp:Label ID="Label1" runat="server" Text="Gestão de Artigo" 
        Font-Names="Tahoma" Font-Size="Large" ForeColor="White"></asp:Label>
</asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSourceArtigo" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [Artigo] WHERE [ID_Artigo] = @ID_Artigo" 
    InsertCommand="INSERT INTO [Artigo] ([Descricao], [Imagem], [Preco], [Detalhe], [ID_Categoria], [ID_User]) VALUES (@Descricao, @Imagem, @Preco, @Detalhe, @ID_Categoria, @ID_User)" 
    SelectCommand="SELECT [ID_Artigo], [Descricao], [Imagem], [Preco], [Detalhe], [ID_Categoria], [ID_User] FROM [Artigo]" 
    UpdateCommand="UPDATE [Artigo] SET [Descricao] = @Descricao, [Imagem] = @Imagem, [Preco] = @Preco, [Detalhe] = @Detalhe, [ID_Categoria] = @ID_Categoria, [ID_User] = @ID_User WHERE [ID_Artigo] = @ID_Artigo">
    <DeleteParameters>
        <asp:Parameter Name="ID_Artigo" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Descricao" Type="String" />
        <asp:Parameter Name="Imagem" Type="String" />
        <asp:Parameter Name="Preco" Type="String" />
        <asp:Parameter Name="Detalhe" Type="String" />
        <asp:Parameter Name="ID_Categoria" Type="Int32" />
        <asp:Parameter Name="ID_User" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Descricao" Type="String" />
        <asp:Parameter Name="Imagem" Type="String" />
        <asp:Parameter Name="Preco" Type="String" />
        <asp:Parameter Name="Detalhe" Type="String" />
        <asp:Parameter Name="ID_Categoria" Type="Int32" />
        <asp:Parameter Name="ID_User" Type="Int32" />
        <asp:Parameter Name="ID_Artigo" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" DataKeyNames="ID_Artigo" 
    DataSourceID="SqlDataSourceArtigo" Height="305px" Width="418px">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ID_Artigo" HeaderText="ID_Artigo" 
            InsertVisible="False" ReadOnly="True" SortExpression="ID_Artigo" />
        <asp:BoundField DataField="Descricao" HeaderText="Descricao" 
            SortExpression="Descricao" />
        <asp:BoundField DataField="Imagem" HeaderText="Imagem" 
            SortExpression="Imagem" />
        <asp:BoundField DataField="Preco" HeaderText="Preco" SortExpression="Preco" />
        <asp:BoundField DataField="Detalhe" HeaderText="Detalhe" 
            SortExpression="Detalhe" />
        <asp:BoundField DataField="ID_Categoria" HeaderText="ID_Categoria" 
            SortExpression="ID_Categoria" />
        <asp:BoundField DataField="ID_User" HeaderText="ID_User" 
            SortExpression="ID_User" />
    </Columns>
</asp:GridView>
<br />
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NovoArtigo.aspx">Inserir novo artigo</asp:HyperLink>
<br />
</asp:Content>

