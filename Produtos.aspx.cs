using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Running : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        ConnectionStringSettingsCollection cnlist = ConfigurationManager.ConnectionStrings;
        SqlConnection cn = new SqlConnection(cnlist[1].ConnectionString);

        SqlCommand cmd = new SqlCommand("Select Quantidade from Artigo  WHERE ID_Artigo = @ID_Artigo", cn);
        //cmd.Parameters.Add(new SqlParameter("@ID_Artigo", Login1.UserName));
        int strResult = 0;
        cn.Open();
        strResult = (int)cmd.ExecuteScalar();
        cn.Close();


        Session["Cesta"] = strResult;
        Session["Cesta"] =+ 1;



    }
   
}