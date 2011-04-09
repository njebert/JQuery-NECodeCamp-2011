<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    AdvancedAnimate
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <%--This demo was never completed. I opted to show the don't panic labs site in its stead.--%>
    <script type="text/javascript">
        $(document).ready(function () {
            
            $(".pbackground").mousemove(function (e) {
                var x = e.pageX - this.offsetLeft;
                var y = e.pageY - this.offsetTop;

                var diffx = x - 400;
                var diffy = y - 207;

                if (diffx > 20) {
                    
                }

                $('#status').html(x + ', ' + y);
                $("#status2").html(diffx + ', ' + diffy);
            });
        });
    </script>
    <div class="pbackground">
        <img class="pb1" src="../../Content/Images/pb1.png" />
        <img class="pb2" src="../../Content/Images/pb2.png" />
    </div>
    <div id="status">
    </div>
    <div id="status2">
    </div>
</asp:Content>
