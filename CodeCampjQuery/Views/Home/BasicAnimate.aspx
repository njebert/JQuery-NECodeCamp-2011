<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Basic Animation
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            $(".popBox").hover(function () {
                $(this).addClass("highlight");
            }, function () {
                $(this).removeClass("highlight");
            });

            $(".popBox:eq(0)").click(function () {
                $("#detail").animate({
                    width: '500px',
                    opacity: '0.8',
                }, 1500, function () {
                    // Animation complete.
                });
            });
        });
    </script>
    <div class="adWrapper">
        <div class="mainAd">
            <div class="popBox">
                <div class="popBox" id="detail">
                    Here are some details about point #1, the deer. This is a random picture of a random
                    deer.
                </div>
            </div>
            <div class="popBox">
                Point #2 - Deer <a href="" class="moreLink">More</a>
            </div>
            <div class="popBox">
                Point #3 - Deer <a href="" class="moreLink">More</a>
            </div>
            <div class="popBox">
                Point #4 - Deer <a href="" class="moreLink">More</a>
            </div>
        </div>
    </div>
</asp:Content>
