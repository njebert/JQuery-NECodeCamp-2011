<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    AjaxBasic
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        var scrollTopPos = 0;
        var scrollTopLimit = 100;
        var updateNumber;

        $(document).ready(function () {
            updateNumber = $.trim($(".popBox:last").html());

            var markup = "<div class=\"popBox\"><b>${Content}</b></div>";

            // Compile the markup as a named template
            jQuery.template("updateTemplate", markup);

            $(document).scroll(function () {
                var scroll = $(this).scrollTop();
                if (scroll > scrollTopLimit) {

                //Add an element to the end of the page
                $.ajax({ url: "/Home/GetMoreUpdates", context: document.body, success: function (data) {
                    $(document).find(".popBox:last").after(data);
//                        $.tmpl("updateTemplate", data)
//                                .appendTo(".ajaxBackground");
                }
                });

//                var url = "/Home/GetMoreUpdates?updateNumber=" + updateNumber + "";
//                $.ajax({ url: url, context: document.body, success: function (data) {
//                    $(document).find(".popBox:last").after(data);
//                    updateNumber = $.trim($(".popBox:last").html());
//                }
//                });

//                var url = "/Infinite/GetMoreUpdates?updateNumber=" + updateNumber + "";
//                $.ajax({ url: url, context: document.body,async: false, success: function (data) {
//                    $(document).find(".update:last").after(data);
//                    updateNumber = $.trim($(document).find(".update:last").first()[0].innerText);
//                }
//                });

                scrollTopLimit = scrollTopLimit + 300;
                }
            });
    });

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
