<%@ Page Title="Shopping Adda- Product Details" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Single.aspx.cs" Inherits="ShopingAdda.Single" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">


<!-- //breadcrumbs -->
<asp:DataList ID="dlProduct" runat="server">
                <ItemTemplate>
                <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="Home.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active"><asp:Label ID="Label1" runat="server" Text='<%# Bind("Name")%>' /></li>
			</ol>
		</div>
	</div>
	<div class="products">
		<div class="container">
			<div class="agileinfo_single">
				
				<div class="col-md-4 agileinfo_single_left">
					<asp:Image ID="img" runat="server" ImageUrl='<%# Bind("ImageUrl") %>' CssClass="img-responsive" AlternateText="Product Image"  />
                   
				</div>
				<div class="col-md-8 agileinfo_single_right">
				<h2><asp:Label ID="txtProduct" runat="server" Text='<%# Bind("Name")%>'></asp:Label></h2>
					<div class="rating1">
						<span class="starRating">
							<input id="rating5" type="radio" name="rating" value="5">
							<label for="rating5">5</label>
							<input id="rating4" type="radio" name="rating" value="4">
							<label for="rating4">4</label>
							<input id="rating3" type="radio" name="rating" value="3" checked="">
							<label for="rating3">3</label>
							<input id="rating2" type="radio" name="rating" value="2">
							<label for="rating2">2</label>
							<input id="rating1" type="radio" name="rating" value="1">
							<label for="rating1">1</label>
						</span>
					&nbsp;&nbsp;&nbsp;</div>
                   
					<div class="w3agile_description">
						<h4>Description:</h4>
						<p><asp:Label ID="txtDescription" runat="server" Text='<%# Bind("Description") %>' ></asp:Label></p>
					</div>
                     <div class="snipcart-thumb agileinfo_single_right_snipcart">
							<h3><asp:Label ID="txtPrice" runat="server"  Text='<%# Bind("Price") %>'></asp:Label><span>/-</span></h3>
						</div>

					<div class="snipcart-item block">
						
						<div class="snipcart-details agileinfo_single_right_details">
                            <asp:HiddenField ID="hfProductID" runat="server" Value="<%# Bind('ProductID')%>"/>
							
                          <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" 
                                CssClass="button" CommandArgument="<%# Bind('ProductID')%>" 
                                onclick="btnAddToCart_Click"/>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
                
			</div>
		</div>
	</div>
    </ItemTemplate>
                </asp:DataList>



</asp:Content>
