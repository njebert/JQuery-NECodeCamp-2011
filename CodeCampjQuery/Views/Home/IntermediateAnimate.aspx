<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Intermediate Animation
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">

        var offset = 0;
        $(document).ready(function () {
            ScrollHeader();
        });

        function ScrollHeader() {
            offset = offset + 2;
            $(".backgroundHeader").css("background-position", offset + "px" + " 100%");
            setTimeout(function () {
                ScrollHeader();
            }, 25);
        }

    </script>
    <div class="backgroundHeader">
        <div class="foreGroundContent">
        Content
        </div>
    </div>
</asp:Content>
