using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Search : System.Web.UI.Page
{
    static OleDbConnection myCon;
        
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            myCon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/RemaxDatabase.mdb"));
            myCon.Open();
            fillComboBox();
            string sql = "SELECT * FROM House";
            OleDbCommand myCmd = new OleDbCommand(sql, myCon);
            OleDbDataReader myRd = myCmd.ExecuteReader();
            Display(myRd);
        }
    }

    private void Display(OleDbDataReader myRd)
    {
        Image img = new Image();
        litHouses.Text = "<table><tr>";
        int c = 0;
        DateTime n = DateTime.Now;
        while (myRd.Read())
        {
            c++;
            litHouses.Text += @"<td><div class='card' style='width: 18rem; '><img src='../images/" + myRd["Photo"].ToString() + "' style='width:286px;height:286px;' class='card-img-top'><div class='card-body'><h6 class='card-title'>" + myRd["HouseType"].ToString().ToUpper() + "</h6><p class='card-text'>" + myRd["Address"].ToString() + "," + myRd["Location"].ToString() + "</p><p>Price: " + myRd["Price"].ToString() + "</div></td>";
            if (c == 4)
            {
                litHouses.Text += "</tr><tr>";
                c = 0;
            }
        }
        litHouses.Text += "</table>";
    }

    private void fillComboBox()
    {
        OleDbCommand cmdType = new OleDbCommand("SELECT * FROM PropertyType", myCon);
        OleDbDataReader rdType = cmdType.ExecuteReader();
        cboTypeOfResidence.DataTextField = "TypeProperty";
        cboTypeOfResidence.DataValueField = "TypeId";
        cboTypeOfResidence.DataSource = rdType;
        cboTypeOfResidence.DataBind();

        OleDbCommand cmdLocation = new OleDbCommand("SELECT * FROM City", myCon);
        OleDbDataReader rdLocatom = cmdLocation.ExecuteReader();
        cboLocation.DataTextField = "CityName";
        cboLocation.DataValueField = "CityId";
        cboLocation.DataSource = rdLocatom;
        cboLocation.DataBind();
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        string sql = "SELECT * FROM House WHERE HouseType='" + cboTypeOfResidence.SelectedItem.ToString() + "'AND Location='" + cboLocation.SelectedItem.ToString() + "'AND Price=" + cboPrice.SelectedItem.Value + "AND NumberOfRooms='" + cboNumberOfRooms.SelectedItem.ToString() + "'";
        OleDbCommand myCmd = new OleDbCommand(sql, myCon);
        OleDbDataReader myRd = myCmd.ExecuteReader();
        Display(myRd);
    }

    protected void cboTypeOfResidence_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql = "SELECT * FROM House WHERE HouseType ='" + cboTypeOfResidence.SelectedItem.Text + "'";
        OleDbCommand myCmd = new OleDbCommand(sql, myCon);
        OleDbDataReader myRd = myCmd.ExecuteReader();
        Display(myRd);
    }

    protected void cboLocation_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql = "SELECT * FROM House WHERE Location = '" + cboLocation.SelectedItem.Text + "'";
        OleDbCommand myCmd = new OleDbCommand(sql, myCon);
        OleDbDataReader myRd = myCmd.ExecuteReader();
        Display(myRd);
    }

    protected void cboPrice_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql = "SELECT * FROM House WHERE Price =" + cboPrice.SelectedItem.Value;
        OleDbCommand myCmd = new OleDbCommand(sql, myCon);
        OleDbDataReader myRd = myCmd.ExecuteReader();
        Display(myRd);
    }

    protected void cboNumberOfRooms_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql = "SELECT * FROM House WHERE NumberOfRooms = '" + cboNumberOfRooms.SelectedItem.Text + "'";
        OleDbCommand myCmd = new OleDbCommand(sql, myCon);
        OleDbDataReader myRd = myCmd.ExecuteReader();
        Display(myRd);
    }
}