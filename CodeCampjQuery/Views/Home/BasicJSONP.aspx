<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    BasicJSONP
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $.getJSON("http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?",
                {
                    tags: "High Life",
                    tagmode: "any",
                    format: "json"
                },
            function (data) {
                $.each(data.items, function (i, item) {
                    $("<img/>").attr("src", item.media.m).appendTo("#images");
                    if (i == 3) return false;
                });
            });

            $.getJSON("http://api.twitter.com/1/statuses/show/56617185505837056.json?callback=?",
                  {
                  },
                  function (data) {
                      $("#images").after("<div>" + data.text + "</div>");
                  });

            $("#searchClick").click(function () {
                GetImages($("#imageSearch").val());
            });
        });



        function GetImages(searchTerm) {
            $.getJSON("http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?",
                {
                    tags: searchTerm,
                    tagmode: "any",
                    format: "json"
                },
            function (data) {
                $.each(data.items, function (i, item) {
                    $("<img/>").attr("src", item.media.m).prependTo("#images");
                    if (i == 3) return false;
                });
            });
        }
    </script>
    <input id="imageSearch" type="text" />
    <div id="searchClick" style="height: 100px; width: 100px; background-color: Red;">Click Me</div>
    <div id="images">
    </div>
</asp:Content>
