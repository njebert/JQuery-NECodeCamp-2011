<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Intermediate Ajax
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        var contentControl = 0;
        $(document).ready(function () {
            RefreshItems();
        });

        function RefreshItems() {
            contentControl = contentControl + 1;
            //ajax call
            var url = "/Home/GetNewContent?contentNumber=" + contentControl + "";
            $.ajax({ url: url, context: document.body, success: function (data) {
                $(document).find(".popBox:first").before(data).fadeIn();
                updateNumber = $.trim($(".popBox:last").html());
            }
            });
            setTimeout(function () {
                RefreshItems();
            }, 250);

        }

    </script>
    <div class="ajaxBackground">
        <div class="popBox">
            1</div>
        <div class="popBox">
            2</div>
        <div class="popBox">
            3</div>
        <div class="popBox">
            4</div>
        <div class="popBox">
            5</div>
        <div class="popBox">
            6</div>
        <div class="popBox">
            7</div>
    </div>
</asp:Content>
