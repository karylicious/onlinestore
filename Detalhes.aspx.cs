using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Detalhes : System.Web.UI.Page
   
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButtonAddItem_Click(object sender, ImageClickEventArgs e)
    {

        ConnectionStringSettingsCollection cnlist = ConfigurationManager.ConnectionStrings;
        SqlConnection cn = new SqlConnection(cnlist[1].ConnectionString);

        SqlCommand cmd = new SqlCommand("Select Preco from Artigo  WHERE ID_Artigo = @ID_Artigo", cn);
        cmd.Parameters.Add(new SqlParameter("@ID_Artigo", Request.QueryString["ID_Artigo"]));
        String Result = "";

        try
        {
            cn.Open();
            Result = (String)cmd.ExecuteScalar();
            cn.Close();
        }
        catch (Exception)
        {
            cn.Close();
        }

                
        Session["Preco"] = Result;


        Session["Cesta"] = Convert.ToInt32(Session["Cesta"]) + 1;
        
        //SqlCommand cmd2 = new SqlCommand("Update Artigo Set Quantidade = @Quantidade where ID_Artigo= @ID_Artigo", cn);
        //cmd2.Parameters.Add(new SqlParameter("@Quantidade", Session["Cesta"]));
        //cmd2.Parameters.Add(new SqlParameter("@ID_Artigo", Request.QueryString["ID_Artigo"]));
       
        //cn.Open();
        //cmd2.ExecuteNonQuery();
        //cn.Close();

        Response.Redirect("Default.aspx");
    }
    protected void ImageButtonBuy_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Cesta.aspx?ID=" + Request.QueryString["ID_Artigo"]);



    }
}