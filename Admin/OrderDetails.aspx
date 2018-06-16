<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="ShopingAdda.Admin.OrderDetails" %>

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
    <style type="text/css">
    .lblCustomerAddress
    {
        height: 100px;
    }
    .styleOrderDetails
    {  
        width:100%;
       border-style:none;
        text-align: center;
        background-color:#fe9126;
        color:Black;
    }
        .style1
        {
            width: 470px;
        }
        .style2
        {
            width: 178px;
        }
        .style3
        {
            height: 100px;
            width: 178px;
        }
        .style4
        {
            width: 297px;
        }
    </style>
</head>
<body>
<div class="container">
    <form id="form1" runat="server">
    <div class="agileits_header">
        <div class="container" align="center">
            <asp:Label ID="Label1" Text="Customer Order Details" runat="server" ForeColor="White"></asp:Label>
            <div class="clearfix">
            </div>
        </div>
    </div>
    <div class="logo_products" style="background-color:#d103ca;">
        <div class="container">
            <div class="w3ls_logo_products_left1">
            </div>
            <div class="w3ls_logo_products_left" >
                <h1>
                    <a href="../Home.aspx">Shopping Adda</a></h1>
            </div>
            <div class="w3l_search">
            </div>
            <div class="clearfix">
            </div>
        </div>
    </div>


    <hr />
  
    <div align="center">
    </div>
    
<asp:ScriptManager ID="ScriptManager1" runat="server">

</asp:ScriptManager >
<asp:UpdatePanel ID="UpdatepanelOrderStatus" runat="server">
    <ContentTemplate>
            
            
                     
                    
                     <table class="styleOrderDetails">
                      <tr>
                      <td colspan="2">
                            <asp:Image ID="Image1" ImageUrl="~/images/CustomerDetails.png" runat="server" 
                                Height="150px" 
                                    Width="228px" />
                        </td>
                      </tr>
                      <tr>
                        <td class="style4">
                           <b><i> Name : <b><i>
                            
                            </td>
                        <td class="style2">
                        <b><i>
                        <asp:Label ID="lblCstomerName" runat="server"  ></asp:Label>
                        </i></b>
                        </td>
                      </tr>
                      <tr>
                        <td class="style4">
                          <b><i>  Email ID: </i></b></td>
                        <td class="style2">
                        <b><i>
                            <asp:Label ID="lblCustomerEmailId" runat="server"  ></asp:Label>
                            </i></b>
                        </td>
                      </tr>
                      <tr>
                        <td class="style4">
                         <b><i>   Phone No: </i></b></td>
                        <td class="style2">
                        <b><i> 
                            <asp:Label ID="lblCustomerPhoneNo" runat="server"  ></asp:Label>
                        </td>
                      </tr>
                      <tr>
                        <td class="style4">
                          <b><i>  Total Products :</i></b></td>
                          </i></b>
                        <td class="style2">
                        <b><i> 
                            <asp:Label ID="lblTotalProducts" runat="server"  ></asp:Label>
                            </i></b>
                        </td>
                      </tr>
                      <tr>
                        <td class="style4">
                          <b><i>  Total Price : </i></b></td>
                        <td class="style2">
                        <b><i> 
                            <asp:Label ID="lblTotalPrice" runat="server"  ></asp:Label>
                            </i></b>
                        </td>
                      </tr>
                      <tr>
                        <td class="style4">
                           <b><i> Address: </i></b></td>
                        <td class="style3">
                        <b><i> 
                            <asp:Label ID="lblCustomerAddress" runat="server"  ></asp:Label>
                            </i></b>
                        </td>
                      </tr>
                      <tr>
                        <td class="style4">
                         <b><i>   Payment Method : </i></b></td>
                        <td class="style2">
                        <b><i> 
                            <asp:Label ID="lblPaymentMethod" runat="server" ></asp:Label>
                            </i></b>
                        </td>
                      </tr>
                      <tr>
                        <td colspan="2">

                        </td>
                        
                        
                      </tr>
                      <tr>
                        <td colspan="2">
                        
                        </td>
                      </tr>
                     </table>

                     <hr />
                     
                     
                       <table class="styleOrderDetails">
                         <tr>
                            <td align="center" class="style1">
                            <asp:Image ID="Image2" ImageUrl="~/images/CustomerIcon.png" runat="server" Height="150px" 
                                    Width="228px" />
                            </td>
                         </tr>
                         <tr>
                                <td align="center" class="style1">
                                  <asp:DataList ID="dlProducts" runat="server" Font-Bold="false" Font-Italic="false" Font-Overline="false" Font-Strikeout="false" RepeatColumns="3"
                                  Width="500px">
                                    <ItemTemplate>
                                            <div align="center">
                                                    <table cellspacing="2" style="border:2px ridge violet">
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblProductName" style="font-weight:700" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                   <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' /> 
                                                                 </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                 Product Price : <asp:Label ID="lblPrice"  style="font-weight:700" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Product Quantity : <asp:Label ID="lblQunatity"  style="font-weight:700" runat="server" Text='<%# Eval("ProductQuantity") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                    
                                                    </table>
                                            </div>
                                    </ItemTemplate>
                                  </asp:DataList>

                                </td>
                         </tr>
                       </table>
                     
                     <hr />
                     
                        <table class="styleOrderDetails">
                           <tr>
                            <td align="center">
                                <asp:Image ImageUrl="~/Images/DeliveryStatus.png" runat="server" 
                                    ID="imgDeliveryStatus" Height="228px" Width="276px" />
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
                           <tr>
                                <td align="center"> 
                                    <asp:TextBox ID="txtStatus" runat="server" Width="300px" ></asp:TextBox>&nbsp;
                                    <asp:Button ID="btnAdd" runat="server" style="font-weight:700;" Text="Add" 
                                        Width="45px" onclick="btnAdd_Click"  />
                                </td>
                           </tr>
                        </table>
                     
                     
                   
    </ContentTemplate>
</asp:UpdatePanel>



 




 <div class="footer-copy" align="center">
            <div class="container" align="center">
                <p align="center">
                    © 2017 Shopping Adda. All rights reserved
                </p>
            </div>
        </div>
   
    </form>
    </div>
</body>
</html>

