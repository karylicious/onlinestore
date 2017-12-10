using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Criar_conta : System.Web.UI.Page

{

   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        ConnectionStringSettingsCollection cnlist = ConfigurationManager.ConnectionStrings;
        SqlConnection cn = new SqlConnection(cnlist[1].ConnectionString);
        int aux = -1;
        SqlCommand cmd2 = new SqlCommand("Select ID_User From Utilizador where NomeUser= @NomeUser", cn);
        cmd2.Parameters.Add(new SqlParameter("@NomeUser", TextBoxNome.Text));
        try
        {
             cn.Open();
           aux= (int) cmd2.ExecuteScalar();
            cn.Close();
        }
        catch (Exception)
            {
                cn.Close();
            }
          
        
        if (aux == -1)
        {

            SqlCommand cmd = new SqlCommand("Insert into Utilizador (NomeUser, Pass) values (@NomeUser, @Pass)", cn);
            cmd.Parameters.Add(new SqlParameter("@NomeUser", TextBoxNome.Text));
            cmd.Parameters.Add(new SqlParameter("@Pass", TextBoxPass.Text));
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            Session["estado"] = true;
            Session["NomeUser"] = TextBoxNome.Text;
            if (Page.IsValid)
                Server.Transfer("Default.aspx");

        }
        else
            LabelMessage.Text = "Já existe um utilizador com esse nome. Escolha outro!";
    }

    protected void TextBoxNome_TextChanged(object sender, EventArgs e)
    {
        if (LabelMessage.Text!="")
            LabelMessage.Text="";
    }
}