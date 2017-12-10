using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.IO;

public partial class NovoArtigo : System.Web.UI.Page
{
        protected void Page_Load(object sender, EventArgs e)
    {
        if (!(Session["Verifica"] == null))
        {
            if ((Boolean)Session["Verifica"] == true)
            {
                this.ClientScript.RegisterStartupScript(this.GetType(),
                                  "Startup", "<script language='javascript'>alert('Produto inserido com sucesso!');</script>");
                Session["Verifica"] = false;
            }
        }
         
        

    }
    protected void BtnVerImagem_Click(object sender, EventArgs e)
    {
        
         string fileFullname = this.FileUpload1.PostedFile.FileName;
        string dataName = DateTime.Now.ToString("yyyy-MM-dd hh-mm-ss");
        string fileName = fileFullname.Substring(fileFullname.LastIndexOf("\\") + 1);
        string type = fileFullname.Substring(fileFullname.LastIndexOf(".") + 1);
        if (FileUpload1.PostedFile.ContentType.ToUpper().IndexOf("IMAGE") > -1)
        {
             System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
            int Width = img.Width;
            int Height = img.Height;

             if (Width > 1000 || Height > 1000 || FileUpload1.PostedFile.ContentLength > 1024 * 1024 * 200)
             {
                 this.ClientScript.RegisterStartupScript(this.GetType(), "Startup", 

                       "<script language='javascript'>alert('The image size is too large!');</script>");
            }
            else
            {
                 if (type == "jpg" || type == "gif" || type == "bmp" || type == "JPG" || type == "GIF")
                {
                    string ImagePath = "images/";
                    string sPath = Server.MapPath(ImagePath) + dataName + fileName;
                    string imgPath = ImagePath + dataName + fileName;
                      this.FileUpload1.PostedFile.SaveAs(sPath);
                       this.Image1.ImageUrl = imgPath;
                       Session["Url"] = sPath;
                    
                 }
             }
        }
        
    


     }
    protected void BtnInserir_Click(object sender, EventArgs e)
    {
        
        ConnectionStringSettingsCollection cnlist = ConfigurationManager.ConnectionStrings;
        SqlConnection cn = new SqlConnection(cnlist[1].ConnectionString);

        int aux = -1;
        SqlCommand cmd2 = new SqlCommand("Select ID_Categoria From Categoria where NomeCategoria= @NomeCategoria", cn);
        cmd2.Parameters.Add(new SqlParameter("@NomeCategoria", RadioButtonList1.SelectedItem.Text));

        cn.Open();
           aux= (int) cmd2.ExecuteScalar();
        cn.Close();
      
        SqlCommand cmd = new SqlCommand("Insert into Artigo (Descricao, Imagem, Preco, Detalhe, ID_Categoria, ID_User) values (@Descricao, @Imagem, @Preco, @Detalhe, @ID_Categoria, 8)", cn);
        cmd.Parameters.Add(new SqlParameter("@Descricao", TextBoxDescricao.Text));
        cmd.Parameters.Add(new SqlParameter("@Imagem", (String)Session["Url"]));
        cmd.Parameters.Add(new SqlParameter("@Preco", TextBoxPreco.Text));
        cmd.Parameters.Add(new SqlParameter("@Detalhe", TextBoxDetalhe.Text));
        cmd.Parameters.Add(new SqlParameter("@ID_Categoria", aux));
        
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        Session["Verifica"] = true;
        if (Page.IsValid)
            Server.Transfer("NovoArtigo.aspx");

       
       
    }
 }