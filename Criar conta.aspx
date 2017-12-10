<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Criar conta.aspx.cs" Inherits="Criar_conta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 18px;
        }
        .style3
        {
            height: 28px;
        }
        .style5
        {
            height: 24px;
        }
        .style6
        {
            height: 7px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <table bgcolor="#EFF3FB" style="width: 69%; height: 166px;">
        <tr>
            <td align="center" bgcolor="#507CD1" class="style2" 
                style="font-family: Arial, Helvetica, sans-serif; color: #FFFFFF; font-weight: bold;">
                Criar conta</td>
        </tr>
        <tr>
            <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
                Nome:
                <asp:TextBox ID="TextBoxNome" runat="server" 
                    ontextchanged="TextBoxNome_TextChanged"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxNome" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:
                <asp:TextBox ID="TextBoxPass" runat="server" 
                    ontextchanged="TextBoxNome_TextChanged" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxPass" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
&nbsp;Confirmar Password:
                <asp:TextBox ID="TextBoxConfPass" runat="server" 
                    ontextchanged="TextBoxNome_TextChanged" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxConfPass" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBoxPass" ControlToValidate="TextBoxConfPass" 
                    Display="Dynamic" 
                    ErrorMessage="A Password e a Password de confirmação devem ser iguais. " 
                    ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="LabelMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Criar conta" />
            </td>
        </tr>
    </table>
</asp:Content>

