<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true"
    CodeBehind="CheckOut.aspx.cs" Inherits="ShopingAdda.CheckOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">
    <!-- checkout -->
    <div class="checkout">
        <div class="container">
            <!--<table class="timetable_sub">
                    <thead>
                        <tr>
                            <th>
                                Product
                            </th>
                            <th>
                                Quantity
                            </th>
                            <th>
                                Product Name
                            </th>
                            <th>
                                Price
                            </th>
                            <th>
                                Remove
                            </th>
                        </tr>
                    </thead>
                   
                    </table>
                    -->
            <table>
                <tr>
                    <td>
                        <div align="center">
                            <h2>
                                Your Shopping Cart Contains :
                                <asp:Label ID="lblCheckoutProDuct" runat="server"></asp:Label>
                            </h2>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="pnlMyCart" runat="server" ScrollBars="Auto" Height="500px" BorderColor="Black"
                            BorderStyle="Inset" BorderWidth="1px" Visible="false">
                            <table align="center" cellspacing="1">
                                <tr>
                                    <td align="center">
                                        <asp:DataList ID="dlCheckOutList" runat="server" RepeatColumns="1" Font-Bold="false"
                                            Font-Italic="false" Font-Overline="false" Font-Strikeout="false" Font-Underline="false"
                                            Width="551px">
                                            <ItemTemplate>
                                                <div align="left">
                                                    <table cellspacing="1" style="text-align: center; width: 172px;">
                                                        <tr>
                                                            <td>
                                                                <img alt="" src="<%# Bind('ImageUrl')%>" runat="server" id="imgProductPhoto" style="border: ridge 1px black;
                                                                    width: 150px; height: 150px;" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="border-bottom-style: ridge; border-width: 1px; border-color: #000000">
                                                                <asp:Label ID="lbProductName" runat="server" Text='<%# Eval("Name")%>' CssClass="Productname"
                                                                    Style="font-weight: 700;"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <br />
                                                                Price:<asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                                                &nbsp;x&nbsp;
                                                                <asp:TextBox ID="txtProductQuantity" runat="server" Width="10px" Height="10px" MaxLength="2"
                                                                    AutoPostBack="True" Text='<%# Eval("ProductQuantity") %>' OnTextChanged="txtProductQuantity_TextChanged"></asp:TextBox>
                                                                <asp:HiddenField ID="hfProductID" runat="server" Value='<%# Eval("ProductID")%>' />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <hr />
                                                                <asp:Button ID="btnRemoveFromCart" runat="server" CssClass="buttonStyle" ForeColor="White"
                                                                    BackColor="Crimson" CommandArgument='<%# Eval("ProductID")%>' Text="Remove" Width="100%"
                                                                    BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" CausesValidation="false"
                                                                    Style="height: 24px" OnClick="btnRemoveFromCart_Click" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </ItemTemplate>
                                            <ItemStyle Width="33%" />
                                        </asp:DataList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                <td>
                  <hr />
                </td>
                </tr>
                <tr>
                    <td align="center">
                        <form action="#">
                        <asp:Panel ID="pnlPlaceOrder" runat="server">
                            <table align="center">
                                <tr>
                                    <td align="center">
                                        <b><i>Name: </i></b>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCustomerName"
                                            ErrorMessage="*" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtCustomerName" runat="server" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <b><i>Phone No: </i></b>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCustomerPhoneNo"
                                            ErrorMessage="*" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtCustomerPhoneNo" runat="server" Width="200px" MaxLength="10"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <b><i>Email ID: </i></b>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCustomerEmailID"
                                            ErrorMessage="*" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtCustomerEmailID" runat="server" Width="200px" TextMode="Email"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <b><i>Address: </i></b>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCustomerAddress"
                                            ErrorMessage="*" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        &nbsp;<asp:TextBox runat="server" ID="txtCustomerAddress" TextMode="MultiLine" Width="200px"
                                            Height="50px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <b><i>Total Products: </i></b>
                                    </td>
                                    <td>
                                        &nbsp;<asp:Label ID="lblTotalProducts" runat="server" ReadOnly="true" Width="200px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <b><i>Total Price: </i></b>
                                    </td>
                                    <td>
                                        &nbsp;<asp:Label ID="lblTotalPrice" runat="server" ReadOnly="true" Width="200px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <u><b>Payment Mode: </b></u>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:RadioButtonList ID="rblPaymentMethod" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="1" Selected="True">1.Cash On Delivery</asp:ListItem>
                                            <asp:ListItem Value="2">2.Payment gateway</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:Button ID="btnPlaceOrder" runat="server" Style="font-weight: 700" Text="Place Order"
                                            ValidationGroup="A" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
        <div class="checkout-left">
            <!--  <div class="checkout-left-basket">
                <h4>
                    Continue to basket</h4>
                <ul>
                    <li>Product1 <i>-</i> <span>$15.00 </span></li>
                    <li>Product2 <i>-</i> <span>$25.00 </span></li>
                    <li>Product3 <i>-</i> <span>$29.00 </span></li>
                    <li>Total Service Charges <i>-</i> <span>$15.00</span></li>
                    <li>Total <i>-</i> <span>$84.00</span></li>
                </ul>
            </div> 
            <div class="checkout-right-basket">
                <a href=""><span class="glyphicon glyphicon-menu-left" aria-hidden="true">
                </span>Continue Shopping</a>
            </div> -->
            <div class="clearfix">
            </div>
        </div>
    </div>
    <!-- //checkout -->
</asp:Content>
