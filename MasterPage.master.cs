using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToBoolean(Session["estado"]) == false)
            LinkButton1.Text = "Login";
        else
        {
            LinkButton1.Text = "Logout";
            Label2.Text= "Bem-vindo(a) " +  (Convert.ToString(Session["NomeUser"]));
        }

        try
        {
            if (Convert.ToInt32(Session["Cesta"]) != 0)
                Label3.Text = (Convert.ToString(Session["Cesta"]));
        }
        catch (Exception)
        {
        }
   
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Convert.ToBoolean(Session["estado"]) == false)
        {
            LinkButton1.Text = "Login";
            Server.Transfer("~/Login.aspx");
        }
        else
        {
            LinkButton1.Text = "Login";
            Label2.Text = "";
            Session["estado"] = false;
        }
    }
}
