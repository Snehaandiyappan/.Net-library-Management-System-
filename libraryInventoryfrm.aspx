<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="libraryInventoryfrm.aspx.cs" Inherits="libraryInventoryfrm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">&nbsp; Inventory</a></li>
            <li class="breadcrumb-item active" aria-current="page">
                &nbsp;Book Inventory Management</li>

        </ol>
    </nav>

    <style>
        .divFORM1{
         background-color:aquamarine
        }
    </style>
    <div  id="divFORM1" runat="server" style="border-style: dotted dashed solid double;">
        <div class="card">
            <div class="card-body">

                <div class="row">
                    <div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
                        <div class="form-group">
                            <label>Book Id</label>
                            <asp:TextBox ID="txtBookId" runat="server" CssClass="form-control" AutoComplete="Off" MaxLength="60" TabIndex="1">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBookId"
                                ValidationGroup="Book" SetFocusOnError="True" CssClass="vError">Enter BookId</asp:RequiredFieldValidator>
                        </div>
                    </div>
                  <div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
                        <div class="form-group">
                            <label>Title</label>
                            <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" AutoComplete="Off" MaxLength="60" TabIndex="1">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtTitle"
                                ValidationGroup="Book" SetFocusOnError="True" CssClass="vError">Enter Title</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    </div>
                <div class="row">
                <div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
                        <div class="form-group">
                            <label>Author</label>
                            <asp:TextBox ID="txtAuthor" runat="server" CssClass="form-control" AutoComplete="Off" MaxLength="40" TabIndex="2">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAuthor"
                                ValidationGroup="Book" SetFocusOnError="True" CssClass="vError">Enter Boat Type</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
                        <div class="form-group">
                            <label>ISBN </label>
                            <asp:TextBox ID="txtISBN" runat="server" CssClass="form-control" AutoComplete="Off" MaxLength="40" TabIndex="1">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtISBN"
                                ValidationGroup="Book" SetFocusOnError="True" CssClass="vError">Enter ISBN</asp:RequiredFieldValidator>
                        </div>
                    </div>
                   </div>
                <div class="row">
                    <div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
                        <div class="form-group">
                            <label>Publisher</label>
                            <asp:TextBox ID="txtPublisher" runat="server" CssClass="form-control" AutoComplete="Off" MaxLength="40" TabIndex="2">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPublisher"
                                ValidationGroup="Book" SetFocusOnError="True" CssClass="vError">Enter Publisher</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
                        <div class="form-group">
                            <label>Year </label>
                            <asp:TextBox ID="txtYear" runat="server" CssClass="form-control" AutoComplete="Off" MaxLength="40" TabIndex="1">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtYear"
                                ValidationGroup="Book" SetFocusOnError="True" CssClass="vError">Enter Year</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-sm-4 col-md-4 col-lg-4 col-xs-12">
                    </div>
                    <div class="col-md-12 col-lg-12 col-sm-12 text-right">
                        <div class="form-submit">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-primary" ValidationGroup="Book" TabIndex="3" OnClick="btnSubmit_Click"/>
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" class="btn  btn-danger" TabIndex="4" OnClick="btnCancel_Click"  />
                        </div>
                    </div>
                </div>
            
        </div>
    </div>
       
    <br />
    <br />
   <div class="table-div" id="divGrid" runat="server">
        <div class="table-responsive">
            <div style="margin-left: auto; margin-right: auto; text-align: center;">
                <asp:Label ID="lblGridMsg" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
            </div>
            <asp:GridView ID="gvBook" runat="server" AllowPaging="True" CssClass="gvv display table table-bordered table-condenced"
                AutoGenerateColumns="False" DataKeyNames="BookId" PageSize="25000" OnRowEditing="gvBook_RowEditing">
           <Columns>
                    <asp:BoundField DataField="BookId" HeaderText="BookId" ReadOnly="true" />
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                    <asp:BoundField  DataField="Publisher" HeaderText="Publisher" />
                    <asp:BoundField DataField="Year" HeaderText="Year" />
                   <asp:TemplateField HeaderText="Edit/Update">
                       <ItemTemplate>
                            <asp:LinkButton Text="Edit" runat="server" CommandName="Edit" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton Text="Update" runat="server" OnClick="OnUpdate" />
                        </EditItemTemplate>
                   </asp:TemplateField>
               
                    <asp:TemplateField HeaderText="Delete" HeaderStyle-CssClass="grdHead">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImgBtnDelete" ForeColor="#512c88" CausesValidation="false" Font-Underline="false" Width="20" CssClass="imgOutLine"
                                runat="server" Font-Bold="true" ImageUrl="~/Images/Delete.png" OnClick="ImgBtnDelete_Click" OnClientClick="return confirm('Are you sure you want to delete this entry?');" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
              
                </Columns>
            </asp:GridView>
        </div>
    </div>
    </div>
</asp:Content>

