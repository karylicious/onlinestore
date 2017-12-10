<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        height: 14px;
    }
    .style3
    {
        height: 13px;
    }
    .style4
    {
        height: 320px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" Height="246px" ImageUrl="~/images/bv.bmp" 
    Width="439px" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 439px">
    <tr>
        <td>
            <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/images/ksks.gif" 
                Height="23px" HorizontalAlign="Left">
                <asp:Label ID="Label1" runat="server" Font-Names="Tahoma" 
    Font-Size="Large" ForeColor="White" Text="Sugestões"></asp:Label>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td class="style4">
            <div>
                <img alt="" border="0" height="10" 
                    src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></div>
            <table align="center" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                                <td height="115" width="187">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td align="center" rowspan="3" width="97">
                                                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/14.bmp" 
                                                    PostBackUrl="~/DetalhesProd1.aspx" />
                                            </td>
                                            <td width="90">
                                                <div class="item_name">
                                                    <asp:HyperLink ID="HyperLink1" runat="server" 
                                                        NavigateUrl="~/DetalhesProd1.aspx">G6411 XENON MAX</asp:HyperLink>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" height="45" width="90">
                                                <div class="item_price">
                                                    &#8364; 3599.90</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" width="90">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style2">
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                                <td class="style2">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                                <td height="115" width="187">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td align="center" rowspan="3" width="97">
                                                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/16.bmp" />
                                            </td>
                                            <td width="90">
                                                <div class="item_name">
                                                    <asp:HyperLink ID="HyperLink2" runat="server">TRAIL ROCK 3.4 XC</asp:HyperLink>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" height="45" width="90">
                                                <div class="item_price">
                                                    &#8364; 229.00</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" width="90">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                                <td height="115" width="187">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td align="center" rowspan="3" width="97">
                                                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/15.bmp" />
                                            </td>
                                            <td width="90" class="style3">
                                                <div class="item_name">
                                                    <asp:HyperLink ID="HyperLink3" runat="server">Cell IKONIS</asp:HyperLink>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" height="45" width="90">
                                                <div class="item_price">
                                                    &#8364; 59.90</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" width="90">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                                <td height="115" width="187">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td align="center" rowspan="3" width="97">
                                                <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/17.bmp" />
                                            </td>
                                            <td width="90">
                                                <div class="item_name">
                                                    <asp:HyperLink ID="HyperLink4" runat="server">MINI</asp:HyperLink>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" height="45" width="90">
                                                <div class="item_price">
                                                    &#8364; 2.45</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" width="90">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <img alt="" border="0" height="1" 
                                        src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <div>
                <img alt="" border="0" height="10" 
                    src="http://localhost:62403/Trabalho1/images/spacer.gif" width="1" /></div>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

