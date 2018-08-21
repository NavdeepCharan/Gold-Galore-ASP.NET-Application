<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" Async="true" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<div style="padding-top: 4.5em; padding-left: 2.5em;">
            <h2><%: Title %></h2>

    <div class="row">
        <div class="col-md-8">
            <section id="contactForm">
                <div class="form-horizontal">
                    <h4>Fill this form to contact us.</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="txtname" CssClass="col-md-2 control-label">Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox ID="txtname" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtname"
                                CssClass="text-danger" ErrorMessage="Name is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="txtcontact" CssClass="col-md-2 control-label">Contact</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtcontact" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtcontact"
                                CssClass="text-danger" ErrorMessage="Contact number is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="txtemail" CssClass="col-md-2 control-label">Email ID</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtemail" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtemail"
                                CssClass="text-danger" ErrorMessage="Email ID is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="txtmessage" CssClass="col-md-2 control-label">Message</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtmessage" CssClass="form-control" TextMode="MultiLine" Rows="5" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtmessage"
                                CssClass="text-danger" ErrorMessage="Message is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" ID="btnsubmit" OnClick="btnsubmit_Click" Text="Submit" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
</asp:Content>