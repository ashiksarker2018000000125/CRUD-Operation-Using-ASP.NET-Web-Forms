<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

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
        <input id="Password1" type="password" runat="server" />
    </div>
    <div style="margin-top:10px" >
        <asp:Label ID="Label5" runat="server" Text="Gender : "></asp:Label>
        <%--<asp:CheckBox ID="CheckBox1" runat="server" Text="Male"/>
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Female"/>--%>
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="Gender" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="Gender" />   

        <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>--%>

        <%--<input id="Checkbox1" type="checkbox" />Male<input />
        <input id="Checkbox2" type="checkbox" />Female<input />--%>
    </div>
    <div style="margin-top:10px" >
        <asp:Label ID="Label6" runat="server" Text="Birth Date : "></asp:Label>
        <input id="date1" type="date"/>
    </div>
    <div style="margin-top:10px" >
        <%--<input id="Submit1" type="submit" value="submit" onclick=""  runat="server" />--%>
        <asp:Button ID="submit1"  runat="server" OnClick="submit1_Click" Text="Submit"/>
    </div>
    <br />

    <p>Hide The Element</p>
    <hr />
    <asp:Label ID="Label8" runat="server" Visible="false" ></asp:Label>
    <br />
    <asp:Label ID="Label9" runat="server" Visible="false" ></asp:Label>
    <br />
    <asp:Label ID="Label10" runat="server" Visible="false" ></asp:Label>
    <br />
    <asp:Label ID="Label11" runat="server" Visible="false" ></asp:Label>
    <br />
    <asp:Label ID="Label12" runat="server"  Visible="false" ></asp:Label>
    <br />
    <asp:Label ID="Label7" runat="server" ></asp:Label>






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

    




        <%--<div>
            <h2>Hellow World</h2> 
        </div>
        <table style="width:100%;">
            <tr>
                <td class="modal-sm" style="width: 82px">User Name : </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 82px">Password :&nbsp;&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
          
        </table>
        <br />

        <asp:LinkButton ID="LinkButton1" runat="server">Login</asp:LinkButton>
        --%>



    <br />
    <br />
    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
        <asp:ListItem Value="20" Text="Apple">Apple</asp:ListItem>
        <asp:ListItem Value="30" Text="Mango">Mango</asp:ListItem>
        <asp:ListItem Value="40" Text="Banana">Banana</asp:ListItem>
    </asp:CheckBoxList>
    <asp:Button ID="Button1" runat="server" Text="Check" OnClick="Button1_Click" />
    
     <asp:Label ID="Label13" runat="server" Visible="false"></asp:Label>

    <br />
    
    


   
</asp:Content>
