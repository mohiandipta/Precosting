using Microsoft.Build.Tasks;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Precosting
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                ModelState.Clear();
            }
        }


        // connection string
        SqlConnection conn = new SqlConnection("Data Source=devSql-2;Initial Catalog=LC_Precosting;Integrated Security=True");


        // submit button
        protected void Button1_Click(object sender, EventArgs e)
        {
            int PO = int.Parse(TextBox1.Text);
            int LC = int.Parse(TextBox2.Text);
            string unit = DropDownList1.SelectedValue;
            int lcOpenCommission = int.Parse(TextBox3.Text);
            int vatOnOpeningCommisision = int.Parse(TextBox4.Text);
            int swiftCharges = int.Parse(TextBox5.Text);
            int vatOnSwift = int.Parse(TextBox6.Text);
            int stationaryCharges = int.Parse(TextBox7.Text);
            int vatOnStationary = int.Parse(TextBox8.Text);
            int govtStamp = int.Parse(TextBox9.Text);
            int confirmationBankCharges = int.Parse(TextBox10.Text);
            int vatOnConfirmationCharges = int.Parse(TextBox11.Text);
            int creditReportCharges = int.Parse(TextBox12.Text);
            int vatOnCreditReportCharges = int.Parse(TextBox13.Text);
            int lcCancelallationCharges = int.Parse(TextBox14.Text);
            int vatOnCancellationCharges = int.Parse(TextBox15.Text);
            int otherBankCharges = int.Parse(TextBox16.Text);
            int vatOnOtherBankCharges = int.Parse(TextBox17.Text);
            string legalCompliance = TextBox18.Text;
            int totalAdjustment = int.Parse(TextBox19.Text);

            conn.Open();
            SqlCommand comm = new SqlCommand("exec PrecostingSetup_SP '" + PO + "', '" + LC + "', '" + unit + "', '" + lcOpenCommission + "', '" + vatOnOpeningCommisision + "', '" + swiftCharges + "', '" + vatOnSwift + "', '" + stationaryCharges + "', '" + vatOnStationary + "', '" + govtStamp + "', '" + confirmationBankCharges + "', '" + vatOnConfirmationCharges + "', '" + creditReportCharges + "', '" + vatOnCreditReportCharges + "', '" + lcCancelallationCharges + "', '" + vatOnCancellationCharges + "', '" + otherBankCharges + "', '" + vatOnOtherBankCharges + "', '" + legalCompliance + "', '" + totalAdjustment + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox16.Text = "";
            TextBox17.Text = "";
            TextBox18.Text = "";
            TextBox19.Text = "";

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Submited');", true);
            //ViewList();
        }



        // view table
        void ViewList()
        {
            SqlCommand comm = new SqlCommand("exec PrecostingList_SP", conn);
            SqlDataAdapter sd = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        // search button
        protected void Button2_Click(object sender, EventArgs e)
        {
            int PO = int.Parse(TextBox1.Text);
            int LC = int.Parse(TextBox2.Text);

            conn.Open();

            SqlCommand comm = new SqlCommand("exec PrecostingSearch_SP '" + PO + "', '" + LC + "'", conn);

            SqlDataAdapter sd = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();

            using (SqlDataReader sdr = comm.ExecuteReader()) 
            {
                sdr.Read();
                TextBox3.Text = sdr["lcOpenCommission"].ToString();
                TextBox4.Text = sdr["vatOnOpeningCommisision"].ToString();
                TextBox5.Text = sdr["swiftCharges"].ToString();
                TextBox6.Text = sdr["vatOnSwift"].ToString();
                TextBox7.Text = sdr["stationaryCharges"].ToString();
                TextBox8.Text = sdr["vatOnStationary"].ToString();
                TextBox9.Text = sdr["govtStamp"].ToString();
                TextBox10.Text = sdr["confirmationBankCharges"].ToString();
                TextBox11.Text = sdr["vatOnConfirmationCharges"].ToString();
                TextBox12.Text = sdr["creditReportCharges"].ToString();
                TextBox13.Text = sdr["vatOnCreditReportCharges"].ToString();
                TextBox14.Text = sdr["lcCancelallationCharges"].ToString();
                TextBox15.Text = sdr["vatOnCancellationCharges"].ToString();
                TextBox16.Text = sdr["otherBankCharges"].ToString();
                TextBox17.Text = sdr["vatOnOtherBankCharges"].ToString();
                TextBox18.Text = sdr["legalCompliance"].ToString();
                TextBox19.Text = sdr["totalAdjustment"].ToString();

            }
            conn.Close();
        }


        // delete button
        protected void Button3_Click(object sender, EventArgs e)
        {
            int PO = int.Parse(TextBox1.Text);
            int LC = int.Parse(TextBox2.Text);

            conn.Open();
            SqlCommand comm = new SqlCommand("exec PrecostingDelete_SP '" + PO + "', '" + LC + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);

            
            ViewList();
        }


        // show table button
        protected void Button4_Click(object sender, EventArgs e)
        {
            ViewList();
        }
    }
 }
