<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrackYourOrder.aspx.cs"
    Inherits="ShopingAdda.TrackYourOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Desi Adda : The place where you can explore your dream products" />
    <
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- //font-awesome icons -->
    <!-- js -->
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <link href="//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic" 
        rel="stylesheet" type="text/css" />
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic"
        rel="stylesheet" type="text/css" />
    <!-- start-smoth-scrolling -->
   
    <!-- start-smoth-scrolling -->
</head>
<body>
    <form id="form1" runat="server">
    <div class="agileits_header">
        <div class="container" align="center">
            <asp:Label ID="Label1" Text="Track Your order" runat="server" ForeColor="White"></asp:Label>
            <div class="clearfix">
            </div>
        </div>
    </div>
    <div class="logo_products">
        <div class="container">
            <div class="w3ls_logo_products_left1">
            </div>
            <div class="w3ls_logo_products_left">
                <h1>
                    <a href="../Home.aspx">Shopping Adda</a></h1>
            </div>
            <div class="w3l_search">
            </div>
            <div class="clearfix">
            </div>
        </div>
    </div>



     <table align="center">
    <tr>
    <td align="center">
    Transaction NO. : <asp:TextBox ID="txtTransactionNo" runat="server" placeholder="Enter transaction no"></asp:TextBox>
    <asp:Button ID="btnTrackOrder" runat="server" Text="Go" onclick="btnTrackOrder_Click"
             />
    </td>
    </tr>
    <tr>
    <td>
    <table><tr><td> 
                           <asp:Image ID="imgNoresult" Visible="false" runat="server" ImageUrl="~/Images/NoResultFound.png" />
                           </td></tr></table>

    </td>
    </tr>
    <tr>
    <td>
        <asp:Panel ID="pnlOrder1" runat="server">
                        <table class="styleOrderDetails">
                           <tr>
                            <td align="center">
                                <asp:Image ImageUrl="~/Images/DeliveryStatus.png" runat="server" 
                                    ID="imgDeliveryStatus" Height="300px" Width="370px" />
                                <hr />
                            </td>
                           </tr>
                           <tr>
                                <td align="center">
                                       <asp:GridView ID="gvOrderStatus" runat="server" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                                            
                                           <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                           <HeaderStyle BackColor="black" Font-Bold="True" ForeColor="White" />
                                           <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                           <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                           <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                           <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                           <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                           <SortedDescendingHeaderStyle BackColor="#242121" />
                                            
                                       </asp:GridView>
                                </td>
                           </tr>
                          
                           
                          
                        </table>
                     </asp:Panel>
      </td></tr>
   </table>



        <div class="footer-copy" align="center">
            <div class="container" align="center">
                <p align="center">
                    © 2017 Shopping Adda. All rights reserved
                </p>
            </div>
        </div>
   
    </form>
</body>
</html>
