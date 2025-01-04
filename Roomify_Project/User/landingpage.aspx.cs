using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace roomify_project.User
{
    public partial class landingpage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=Roomify;Integrated Security=True;");
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void insertSignupData()
        {

            con.Open();


            string qry = "SELECT * FROM users WHERE user_email = @eml";
            SqlCommand cmd2 = new SqlCommand(qry, con);
            cmd2.Parameters.AddWithValue("@eml", email.Text);
            reader = cmd2.ExecuteReader();

            if (reader.HasRows == true)
            {
                msg_box.Text = "Email already exists !";
                msg_box.CssClass = "alert alert-warning alert-dismissible";
            }
            else if (name.Text == "" || email.Text == "" || phone.Text == "" || password.Text == "" || cpassword.Text == "")
            {
                msg_box.Text = "Fill out the all fields !";
                msg_box.CssClass = "alert alert-warning alert-dismissible";
            }
            else if (password.Text != cpassword.Text)
            {
                msg_box.Text = "Password and confirm password doesn't match !";
                msg_box.CssClass = "alert alert-warning alert-dismissible";
            }
            else
            {
                reader.Close();

                string query = "insert into users (user_name,user_email,user_phone,user_pwd) values(@nm,@email,@phone,@pwd)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@nm", name.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@phone", phone.Text);
                cmd.Parameters.AddWithValue("@pwd", password.Text);
                cmd.ExecuteNonQuery();


                msg_box.Text = "Signup successfull !";
                msg_box.CssClass = "alert alert-success alert-dismissible";

                con.Close();
            }

        }

        protected void Btn_signup_Click(object sender, EventArgs e)
        {
            insertSignupData();// call function signup
        }



        public void ChekLoginData()
        {
            con.Open();

            string qry2 = "SELECT * FROM users WHERE user_email=@email";
            SqlCommand command = new SqlCommand(qry2, con);
            command.Parameters.AddWithValue("@email", loginemail.Text);
            reader = command.ExecuteReader();

            if (reader.HasRows)
            {
                reader.Read();
                if (loginemail.Text == reader["user_email"].ToString() && loginpassword.Text == reader["user_pwd"].ToString())
                {
                    Response.Redirect("WebForm1.aspx");
                }
                else
                {
                    login_msg.Text = ("Please insert correct password..!");
                    login_msg.CssClass = "alert alert-warning alert-dismissible";
                }

            }

            else
            {
                login_msg.Text = ("Please insert correct email..!");
                login_msg.CssClass = "alert alert-warning alert-dismissible";

            }

            con.Close();
        }


        protected void btn_login_Click(object sender, EventArgs e)
        {
            ChekLoginData();//call function login   
        }
    }
}




