<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableEventValidation="true" CodeBehind="CRUDWebForm.aspx.cs" Inherits="WebApplication2.CRUDWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <h3>Registration Form</h3>
     <asp:Label ID="hdnIDx" runat="server" Visible="false" ></asp:Label>

    <div style="margin-top:10px">
        <asp:Label ID="lblname" runat="server" Text="Name : "></asp:Label>
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    </div>
    <div style="margin-top:10px">
        <asp:Label ID="lblfathername" runat="server" Text="Father Name : "></asp:Label>
        <asp:TextBox ID="txtfathertname" runat="server"></asp:TextBox>
    </div>
    <div style="margin-top:10px">
        <asp:Label ID="lblmothername" runat="server" Text="Mother Name : "></asp:Label>
        <asp:TextBox ID="txtmothername" runat="server"></asp:TextBox>
    </div>
    <div style="margin-top:10px">
        <asp:Label ID="lbldistrict" runat="server" Text="District : "></asp:Label>
        <asp:TextBox ID="txtdistrict" runat="server"></asp:TextBox>
    </div>
    <div style="margin-top:10px" >
        <asp:Label ID="lblgender" runat="server" Text="Gender : "></asp:Label>
        <asp:RadioButton ID="rbtnmale" runat="server" Text="Male" GroupName="Gender" />
        <asp:RadioButton ID="rbtnfemale" runat="server" Text="Female" GroupName="Gender" />   
    </div>
    <div style="margin-top:10px" >
        <asp:Label ID="lblmarriedstatus" runat="server" Text="Married Status: "></asp:Label>
        <asp:RadioButton ID="rbtnmarried" runat="server" Text="Married" GroupName="MarriedStatus" />
        <asp:RadioButton ID="rbtnunmarried" runat="server" Text="Unmarried" GroupName="MarriedStatus" />   
        <asp:RadioButton ID="rbtdevorced" runat="server" Text="Devoirced" GroupName="MarriedStatus" />  
    </div>
    <div style="margin-top:10px">
        <asp:Label ID="lblnumber" runat="server" Text="Phone Number : "></asp:Label>
        <asp:TextBox ID="txtnumber" runat="server"></asp:TextBox>
    </div>
    <div style="margin-top:10px" >
        <asp:Label ID="lbldob" runat="server" Text="Birth of Date : " ></asp:Label>
        <input id="txtdob" type="date" runat="server"/>
    </div>
    <div style="margin-top:10px" >
        <asp:Button ID="submit"  runat="server" Text="Submit"  onclick="submit1_Click" />
    </div>

    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="true">
        <Columns>
            <asp:TemplateField HeaderText="Sr. No">
                <ItemTemplate>
                    <asp:Label ID="id" runat="server" Text='<%# Convert.ToInt32(DataBinder.Eval(Container.DataItem,"id")) %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="true" ControlStyle-ForeColor="black" EditText="<span class='fa fa-pencil'></span>" />
            <asp:CommandField ShowDeleteButton="true" ControlStyle-ForeColor="Red" DeleteText="<span class='fa fa-trash'></span>" />
            <asp:TemplateField HeaderText="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtgvname" runat="server" Width="100%" Text='<%# Convert.ToString(DataBinder.Eval(Container.DataItem,"name")) %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="name" runat="server" Text='<%# Convert.ToString(DataBinder.Eval(Container.DataItem,"name")) %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Father Name">
                <EditItemTemplate>
                     <asp:TextBox ID="txtgvfathertname" runat="server" Width="100%" Text='<%# Convert.ToString(DataBinder.Eval(Container.DataItem,"fathername")) %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="fathername" runat="server" Text='<%# Convert.ToString(DataBinder.Eval(Container.DataItem,"fathername")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mother Name">
                <EditItemTemplate>
                     <asp:TextBox ID="txtgvmothername" runat="server" Width="100%" Text='<%# Convert.ToString(DataBinder.Eval(Container.DataItem,"mothername")) %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="mothername" runat="server" Text='<%# Convert.ToString(DataBinder.Eval(Container.DataItem,"mothername")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="District">
                <EditItemTemplate>
                     <asp:TextBox ID="txtgvdistrict" runat="server" Width="100%" Text='<%# Convert.ToString(DataBinder.Eval(Container.DataItem,"district")) %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="district" runat="server" Text='<%# Convert.ToString(DataBinder.Eval(Container.DataItem,"district")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender">
                <EditItemTemplate>
                    <asp:TextBox ID="txtgvgender" runat="server" Width="100%" Text='<%# Convert.ToString(DataBinder.Eval(Container.DataItem,"gender")) %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="gender" runat="server" Text='<%# Convert.ToString(DataBinder.Eval(Container.DataItem,"gender")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Married Status">
                <EditItemTemplate>
                    <asp:TextBox ID="txtgvmarriedstatus" runat="server" Width="100%" Text='<%# Convert.ToString(DataBinder.Eval(Container.DataItem,"maridstatus")) %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="marriedstatus" runat="server" Text='<%# Convert.ToString(DataBinder.Eval(Container.DataItem,"maridstatus")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
          <asp:TemplateField HeaderText="Phone">
              <EditItemTemplate>
                  <asp:TextBox ID="txtgvnumber" runat="server" Width="100%" Text='<%# Convert.ToString(DataBinder.Eval(Container.DataItem,"phone")) %>' ></asp:TextBox>
              </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="phone" runat="server" Text='<%# Convert.ToString(DataBinder.Eval(Container.DataItem,"phone")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date Of Birth">
                <EditItemTemplate>
                    <asp:TextBox ID="txtgvdob" runat="server" Width="100%" Text='<%# Convert.ToDateTime(DataBinder.Eval(Container.DataItem,"dob")).ToString("dd-mm-yy") %>' ></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="dob" runat="server" Text='<%# Convert.ToDateTime(DataBinder.Eval(Container.DataItem,"dob")).ToString("dd-mm-yy") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:Button ID="edit" runat="server" Text="Edit" onclick="edit_Click" Width="100%"/>
                    <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click" Width="100%"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
        </ContentTemplate>
        </asp:UpdatePanel>


</asp:Content>