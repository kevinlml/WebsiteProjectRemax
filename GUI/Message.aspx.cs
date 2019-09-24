using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Message : System.Web.UI.Page
{
    static OleDbConnection myCon;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        var refAgent = Convert.ToInt32(Request.QueryString["refA"]);

        if (!Page.IsPostBack)
        {
            if (Request.QueryString["refA"] != null)
            {
                txtRecipient.Visible = true;
                cboAgents.Visible = false;
                myCon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/RemaxDatabase.mdb"));
                myCon.Open();
                string sql = "Select AgentName, AgentNumber FROM Agent WHERE AgentNumber =" + Convert.ToInt32(Request.QueryString["refA"]) + "";
                OleDbCommand myCmd = new OleDbCommand(sql, myCon);
                OleDbDataReader myRead = myCmd.ExecuteReader();
                if (myRead.Read())
                {
                    txtRecipient.Text = myRead["AgentName"].ToString();
                }
            }
            else
            {
                myCon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/RemaxDatabase.mdb"));
                myCon.Open();
                string sql = "SELECT AgentName, AgentNumber FROM Agent";
                OleDbCommand myCmd = new OleDbCommand(sql, myCon);
                OleDbDataReader myRd = myCmd.ExecuteReader();
                cboAgents.DataTextField = "AgentName";
                cboAgents.DataValueField = "AgentNumber";
                cboAgents.DataSource = myRd;
                cboAgents.DataBind();
            }
        }
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        if(txtRecipient.Visible == true)
        {
           // myCon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/RemaxDatabase.mdb"));
            string sql = "Insert into Messages (Title, Message, Sender, Receiver) Values (@txttitle,@txtmessage,@txtsender,@txtreceiver)";
            OleDbCommand myCmd5 = new OleDbCommand(sql, myCon);
            myCmd5.Parameters.AddWithValue("@txttitle", txtSubject.Text);
            myCmd5.Parameters.AddWithValue("@txtmessage", txtMessage.Text);
            myCmd5.Parameters.AddWithValue("@txtsender", txtFrom.Text);
            myCmd5.Parameters.AddWithValue("@txtreceiver", Convert.ToInt32(Request.QueryString["refA"]));
            myCmd5.ExecuteNonQuery();
            Response.Write("<script>alert('Your Message was succefully send to " + txtRecipient.Text + "');</script>");
            Response.Redirect("Index.aspx");
            myCon.Close();

        }
        else
        {
            //myCon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/RemaxDatabase.mdb"));
            string sql = "Insert into Messages (Title,Message,Sender,Receiver) Values (@txttitle,@txtmessage,@txtsender,@txtreceiver)";
            OleDbCommand myCmd5 = new OleDbCommand(sql, myCon);
            myCmd5.Parameters.AddWithValue("@txttitle", txtSubject.Text);
            myCmd5.Parameters.AddWithValue("@txtmessage", txtMessage.Text);
            myCmd5.Parameters.AddWithValue("@txtsender", txtFrom.Text);
            myCmd5.Parameters.AddWithValue("@txtreceiver", cboAgents.SelectedValue);
            myCmd5.ExecuteNonQuery();
            Response.Write("<script>alert('Your Message was succefully send to " + cboAgents.SelectedItem.ToString() + "');</script>");
            Response.Redirect("Index.aspx");
            myCon.Close();
        }
    }
}