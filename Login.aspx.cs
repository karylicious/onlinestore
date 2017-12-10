using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Login : System.Web.UI.Page
{
       
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

        ConnectionStringSettingsCollection cnlist = ConfigurationManager.ConnectionStrings;
        SqlConnection cn = new SqlConnection(cnlist[1].ConnectionString);

        SqlCommand cmd = new SqlCommand("Select nomeuser from Utilizador  WHERE nomeuser = @nomeuser", cn);
        cmd.Parameters.Add(new SqlParameter("@nomeuser", Login1.UserName));
        String strResult = "";
        cn.Open();
        strResult = (String)cmd.ExecuteScalar();
        cn.Close();

        if (strResult.Length != 0)
        {
            Session["estado"] = true;
            Session["NomeUser"] = strResult;
            Server.Transfer("~/Default.aspx");
        }
        else
            Login1.FailureText = "O nome de usuário e senha digitados estão incorretos.";


    }     
        
       
    
}