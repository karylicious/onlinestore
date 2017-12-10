using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cesta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
       
    }
    protected void ButtonEndBuy_Click(object sender, EventArgs e)
    {
        if ((Boolean)Session["estado"] == false)
        {
            this.ClientScript.RegisterStartupScript(this.GetType(),
                                   "Startup", "<script language='javascript'>alert('Tem de iniciar sessão para poder continuar!');</script>");
        }
    }
}