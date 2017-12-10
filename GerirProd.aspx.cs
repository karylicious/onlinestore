using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GerirProd : System.Web.UI.Page

{

    public static string Mid(string param, int startIndex, int length)
    {
        string result = param.Substring(startIndex, length);
        return result;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Boolean)Session["estado"] == true)
        {
            Session["NomeUser"] = Mid((String)Session["NomeUser"], 0, 5);
            if ((String)Session["NomeUser"] != "admin")
                Server.Transfer("Default.aspx");
        }
        else
            Server.Transfer("Default.aspx");
    }
}