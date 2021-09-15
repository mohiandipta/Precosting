<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Precosting._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Style.css" type="text/css"/>
    

    <div class="form-group">
    
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="PO Number"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Unit"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="125px" DataSourceID="SqlDataSource1" DataTextField="strUnit" DataValueField="strUnit">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ERP_HRConnectionString %>" SelectCommand="SELECT [strUnit] FROM [tblUnit]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="LC Number"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button Class="button" ID="Button2" runat="server" Font-Size="Large" OnClick="Button2_Click" Text="Search" Width="118px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="header" colspan="2" style="height: 87px">OPENING CHARGES</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="LC Open Commission:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px">
                <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="VAT on Opening Com:"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox4" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px">
                <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="Swift Charges:"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox5" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Font-Size="Large" Text="VAT on Swift:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 32px">
                <asp:Label ID="Label8" runat="server" Font-Size="Large" Text="Stationary Charges:"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox7" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px">
                <asp:Label ID="Label9" runat="server" Font-Size="Large" Text="VAT on Stationary:"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox8" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px">
                <asp:Label ID="Label10" runat="server" Font-Size="Large" Text="Govt. Stamp:"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox9" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Font-Size="Large" Text="Confirmation Bank Charges:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px">
                <asp:Label ID="Label12" runat="server" Font-Size="Large" Text="VAT On Confirmation Charges:"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox11" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px">
                <asp:Label ID="Label13" runat="server" Font-Size="Large" Text="Credit Report Charges:"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox12" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Font-Size="Large" Text="VAT on Credit Report Charges:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px">
                <asp:Label ID="Label15" runat="server" Font-Size="Large" Text="LC Cancelation Charges:"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox14" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px">
                <asp:Label ID="Label16" runat="server" Font-Size="Large" Text="VAT on LC Cancelation Charges:"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox15" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px">
                <asp:Label ID="Label17" runat="server" Font-Size="Large" Text="Other Bank Charges:"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox16" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px">
                <asp:Label ID="Label18" runat="server" Font-Size="Large" Text="VAT on Other Bank Charges:"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox17" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px">
                <asp:Label ID="Label19" runat="server" Font-Size="Large" Text="Legal Compliance (BTMA/BJMEA/IP etc.):"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox18" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px">
                <asp:Label ID="Label20" runat="server" Font-Size="Large" Text="Total Adjustment:"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox19" runat="server" value="" type="number" class="from-control prc"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label22" runat="server" Font-Size="Large" Text="Total BDT"></asp:Label>
            </td>
            <td>
                <output id="result" class="output"></output>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button Class="button" ID="Button1" runat="server" Font-Size="Large" OnClick="Button1_Click" Text="Submit" Width="114px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 21px">
                <asp:GridView ID="GridView1" runat="server" Width="587px">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button Class="button" ID="Button4" runat="server" Font-Size="Large" OnClick="Button4_Click" Text="Show Table" Width="161px" />
                &nbsp;&nbsp;
                <asp:Button Class="button" ID="Button3" runat="server" Font-Size="Large" OnClick="Button3_Click" Text="Delete" Width="114px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    </div>


    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script>
        $('.form-group').on('input', '.prc', function () {
            var totalsum = 0;

            $('.form-group .prc').each(function () {
                var inputVal = $(this).val();

                if ($.isNumeric(inputVal)) {
                    totalsum += parseFloat(inputVal);
                }
            });
            $('#result').text(totalsum + " " + "BDT");
        });
    </script>
    
    

</asp:Content>
