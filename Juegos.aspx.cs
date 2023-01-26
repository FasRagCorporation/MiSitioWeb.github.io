using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba
{
    public partial class Juegos : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btGuardar_Click(object sender, ImageClickEventArgs e)
        {
            string SQLInseret;
            SqlConnection SQLCon = new SqlConnection("Data Source=DESKTOP-BQCMRSS; Initial Catalog=PaginaC; Integrated Security=True");
            SqlCommand SQLCmd = new SqlCommand();

            using (SQLCon)
            {
                SQLCon.Open();
                SQLCmd.Connection = SQLCon;

                //Decalrar variables//

                string ANombre, ADescripcion, ACategoria, ATipo;

                ANombre = tbjuego.Text;
                ADescripcion = tbDescripcion.Text;
                ACategoria = dlCate.Text;
                ATipo = dlTipo.Text;

                //Insercion//
                SQLInseret = String.Format("Insert into Juegos(Nombre,Descripcion,Categoria,Tipo)" +
                                        "Values('{0}','{1}','{2}','{3}')", ANombre, ADescripcion, ACategoria, ATipo);


                SQLCmd.CommandText = SQLInseret;
                SQLCmd.ExecuteNonQuery();

                string script = "alert('Informacion subida correctamente');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                SQLCon.Close();

                tbjuego.Text = " ";
                tbDescripcion.Text = " ";
            }
        }

        protected void btCancelar_Click(object sender, ImageClickEventArgs e)
        {
            tbjuego.Text = " ";
            tbDescripcion.Text = " ";
        }
    }
}