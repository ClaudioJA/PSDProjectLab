﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Navigation-Customer.Master" AutoEventWireup="true" CodeBehind="ArtistDetail.aspx.cs" Inherits="PSDLab.View.ArtistDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <br /><br />
    <asp:Label ID="nameLabel" runat="server" Text="Artist Name"></asp:Label><br />
    <asp:Image ID="artistImage" runat="server" width="200" height="200"/>
    <br /><br />
    <% int artID = getArtistID(); %>
    <table border="1">
        <tr>
            <th>Album Image</th>
            <th>Album Name</th>
            <th>Album Price</th>
            <th>Album Description</th>
            <% if (visitorRole == 2) { %>
                <th>Action</th>
            <% } %>
        </tr>
        <%foreach (var x in db.Albums.Where(a => a.artistId == artID)) { %>
        <tr>
            <th><img src='<%= x.albumImage%>' alt="Album Image" width="100" height="100"/></th>
            <th><a href='<%= ResolveUrl("~/View/AlbumDetail.aspx?albumName=") + HttpUtility.UrlEncode(x.albumName) %>'><%= x.albumName%></a></th>
            <th><%= x.albumPrice%></th>
            <th><%= x.albumDesc%></th>
            <% if (visitorRole == 2) { %>
                <th><a href='<%= ResolveUrl("~/View/EditAlbum.aspx?albumName=") + HttpUtility.UrlEncode(x.albumName) %>'>Edit</a></th>
            <% } %>
        </tr>
        <%    } %>
    </table>
    <br /><br />
    <asp:Button ID="addAlbumBtn" runat="server" Text="Add Album" OnClick="addAlbumBtn_Click"/>

</asp:Content>
