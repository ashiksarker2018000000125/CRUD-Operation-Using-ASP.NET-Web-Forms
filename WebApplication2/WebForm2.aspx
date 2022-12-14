<%@ Page Title="" Language="C#" MasterPageFile="~/Start.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>Registration Form</h3>
    <div style="margin-top:10px">
        <asp:Label ID="Label1" runat="server" Text="First Name : "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    <div style="margin-top:10px">
        <asp:Label ID="Label2" runat="server" Text="Last Name : "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </div>
     <div style="margin-top:10px" >
        <asp:Label ID="Label3" runat="server" Text="Email : "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
    </div>
    <div style="margin-top:10px" >
        <asp:Label ID="Label4" runat="server" Text="Password : "></asp:Label>
        <input id="Password1" type="password" />
    </div>
    <div style="margin-top:10px" >
        <asp:Label ID="Label5" runat="server" Text="Gender : "></asp:Label>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Male"/>
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Female"/>
        <%--<asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:CheckBoxList>--%>

        <%--<input id="Checkbox1" type="checkbox" />Male<input />
        <input id="Checkbox2" type="checkbox" />Female<input />--%>
    </div>
    <div style="margin-top:10px" >
        <asp:Label ID="Label6" runat="server" Text="Birth Date : "></asp:Label>
        <input id="date1" type="date"/>
    </div>
    <div style="margin-top:10px" >
        <input id="Submit1" type="submit" value="submit" />
    </div>
    <br />
    <p>Creating Master Page</p>
    <p>Hide The Element</p>
    <script>
        $(document).ready(function () {
            $("p").click(function () {
                $(this).css({"color":"red"});
            });
            $("p").dblclick(function () {
                $(this).hide();
            });
        });

    </script> 


    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            Index 0 Admin Login control
        </asp:View>
        <asp:View ID="View2" runat="server">
            Index 1 Admin Login control
        </asp:View>
        <asp:View ID="View3" runat="server">
            Index 2 Admin Login control
        </asp:View>
    </asp:MultiView>
    

</asp:Content>
