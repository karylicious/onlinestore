<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NovoArtigo.aspx.cs" Inherits="NovoArtigo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
    #File1
    {
        width: 216px;
    }
</style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/images/ksks.gif" 
    Height="30px" HorizontalAlign="Left">
    <asp:Label ID="Label1" runat="server" Text="Inserir novo artigo" 
        Font-Names="Tahoma" Font-Size="Large" ForeColor="White"></asp:Label>
</asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image1" runat="server" />
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Imagem:
    <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;
        <asp:Button ID="BtnVerImagem" runat="server" Height="22px" 
            onclick="BtnVerImagem_Click" Text="Upload" Width="76px" />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nome:
    <asp:TextBox ID="TextBoxDescricao" runat="server" Height="16px" Width="149px"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBoxDescricao" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Preço:
    <asp:TextBox ID="TextBoxPreco" runat="server" Height="16px" Width="149px"></asp:TextBox>
&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBoxPreco" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
<p>
    Características:
    <asp:TextBox ID="TextBoxDetalhe" runat="server" Height="16px" Width="149px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBoxDetalhe" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
<p>
&nbsp;Categoria:&nbsp;</p>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" 
        Width="176px" DataSourceID="SqlDataSource1" DataTextField="NomeCategoria" 
        DataValueField="NomeCategoria">
    </asp:RadioButtonList>
&nbsp;<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT [NomeCategoria] FROM [Categoria]"></asp:SqlDataSource>
</p>
<p align="left">
    <asp:Button ID="BtnInserir" runat="server" Height="23px" Text="Inserir novo produto" 
        Width="150px" onclick="BtnInserir_Click" />
</p>
<p align="right">
    &nbsp;</p>
</asp:Content>


