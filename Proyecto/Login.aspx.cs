using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string user = Login1.UserName;
            string pass = Login1.Password;

            if (AutenticarUsuario(user, pass))
            {
                e.Authenticated = true;
                Response.Redirect("~/default.aspx");
            }
        }

        private bool AutenticarUsuario(string user, string pass)
        {
            return (user == "admin" && pass == "pass");
        }
    }
}