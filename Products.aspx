<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="ShopingAdda.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">

								
 <asp:Panel ID="pnlProducts" runat="server"  Height="100%">
 <asp:DataList ID="dlProducts" runat="server" Height="100%">
                      
                        <ItemTemplate>
                                  <div class="hover14 column">
										<div class="agile_top_brand_left_grid">
											<div class="agile_top_brand_left_grid1">
												<figure>
													<div class="snipcart-item block" >
														<div class="snipcart-thumb">
															<a href="Single.aspx?id=<%# Eval("ProductID")%>"><img alt="" src="<%# Bind('ImageUrl')%>" runat="server" ID="imgurl"  /></a>		
															  <p><asp:Label  ID="lblProductName" runat="server" Text="<%# Bind('Name')%>" ></asp:Label></p>
															<div class="stars">
																<i class="fa fa-star blue-star" aria-hidden="true"></i>
																<i class="fa fa-star blue-star" aria-hidden="true"></i>
																<i class="fa fa-star blue-star" aria-hidden="true"></i>
																<i class="fa fa-star blue-star" aria-hidden="true"></i>
																<i class="fa fa-star gray-star" aria-hidden="true"></i>
															</div>
														<h5  style="text-align:center;"><asp:Label  ID="lblPrice" runat="server" Text="<%# Bind('Price') %>"></asp:Label><span>/-</span></h5>	
														</div>
														<div class="snipcart-details top_brand_home_details">
															
																<a href="Single.aspx?id=<%# Eval("ProductID")%>">                        
                                                               <asp:Button runat="server" type="submit" Text="details" ID="btnAddToCart" CommandArgument="<%# Bind('ProductID')%>" class="button" ></asp:Button>                                                          
                                                               </a>
															
														</div>
													</div>
												</figure>
											</div>
										</div>
									</div>

                                    </ItemTemplate>
                                    </asp:DataList>
                                    </asp:Panel>

</asp:Content>
