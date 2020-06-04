using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class libraryInventoryfrm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("BookId");
            dt.Columns.Add("Title");
            dt.Columns.Add("Author");
            dt.Columns.Add("ISBN");
            dt.Columns.Add("Publisher");
            dt.Columns.Add("Year");
            dt.Rows.Add("0", "Ghost House", "GhostMan", "IS1001", "Ra10", "2020");
            ViewState["dt"] = dt;
            BindbookData();
            btnSubmit.Text = "Submit";

        }
    }
    public void BindbookData()
    {
        
        gvBook.DataSource = ViewState["dt"] as DataTable;
        gvBook.DataBind();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (btnSubmit.Text == "Submit")
        {
            DataTable dt = ViewState["dt"] as DataTable;
            dt.Rows.Add(txtBookId.Text, txtTitle.Text, txtAuthor.Text, txtISBN.Text, txtPublisher.Text, txtYear.Text);
            ViewState["dt"] = dt;
            BindbookData();
            Clear();
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert('Book Details Inserted Successfully');", true);
        }
        
    }

    public void Clear()
    {
        txtAuthor.Text = string.Empty;
        txtBookId.Text = string.Empty;
        txtISBN.Text = string.Empty;
        txtPublisher.Text = string.Empty;
        txtTitle.Text = string.Empty;
        txtYear.Text = string.Empty;
        btnSubmit.Text = "Submit";
        txtBookId.Enabled = true;
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Clear();
        gvBook.EditIndex = -1;
        BindbookData();
    }



    
    protected void ImgBtnDelete_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton lnkbtn = sender as ImageButton;
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        string sTesfg = gvBook.DataKeys[gvrow.RowIndex].Value.ToString();
        DataTable dt = ViewState["dt"] as DataTable;
        dt.Rows.RemoveAt(gvrow.RowIndex);
        ViewState["dt"] = dt;
        BindbookData();
        Clear();
        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert('Book Details Deleted Successfully');", true);

    }

    protected void OnUpdate(object sender, EventArgs e)
    {
        GridViewRow row = (sender as LinkButton).NamingContainer as GridViewRow;
       
        string Title = ((TextBox)row.Cells[1].Controls[0]).Text;
        string Author = ((TextBox)row.Cells[2].Controls[0]).Text;
        string ISBN = ((TextBox)row.Cells[3].Controls[0]).Text;
        string Publisher = ((TextBox)row.Cells[4].Controls[0]).Text;
        string Year = ((TextBox)row.Cells[5].Controls[0]).Text;

        DataTable dt = ViewState["dt"] as DataTable;
      
        dt.Rows[row.RowIndex]["Title"] = Title;
        dt.Rows[row.RowIndex]["Author"] = Author;
        dt.Rows[row.RowIndex]["ISBN"] = ISBN;
        dt.Rows[row.RowIndex]["Publisher"] = Publisher;
        dt.Rows[row.RowIndex]["Year"] = Year;
        ViewState["dt"] = dt;
        gvBook.EditIndex = -1;
        BindbookData();
        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert('Book Details Updated Successfully');", true);

    }

    protected void gvBook_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvBook.EditIndex = e.NewEditIndex;
        BindbookData();
    }
}