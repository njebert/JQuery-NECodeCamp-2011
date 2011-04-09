<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Basic Selection Example
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            //$("tr").css("background-color", "aqua");
            //$("tr:even").css("background-color", "#B0B0B0");
            //$(".headerRow").css("background-color", "white");
            
            $(".tenantRow:eq(2)").css("background-color", "aqua");
            $(".tenantRow:even").css("background-color", "#A0A0A0");
//            $(".tenantRow").click(function () {
//                alert("clicked");
//            });

//            $(".tenantRow").click(function () {
//                alert($(this).children("td:eq(2)").html().trim());
//            });

            $(".tenantRow").click(function () {
                $(this).after("<tr><td><a href='#' class='removeParent'>Click to remove record</a> </td></tr>");
                RegisterRemoveParent();
            });    

        });

        function RegisterRemoveParent() {
            $(".removeParent").click(function () {

                var index = $(this).parents("tr").index() - 1;
                $("table").find("tr:eq(" + index + ")").remove();
                $(this).remove();
                
            });
        
    </script>
    <div class="clickBar">
        Outstanding Fines</div>
    <div>
        <table>
            <tr class="headerRow">
                <th>
                    Name
                </th>
                <th>
                    Apartment Number
                </th>
                <th>
                    Amount owed
                </th>
            </tr>
            <tr class="tenantRow">
                <td>
                    Nick Ebert
                </td>
                <td>
                    908
                </td>
                <td>
                    $100
                </td>
            </tr>
            <tr class="tenantRow">
                <td>
                    Nate Lowry
                </td>
                <td>
                    128
                </td>
                <td>
                    $200
                </td>
            </tr>
            <tr class="tenantRow">
                <td>
                    Paul Bauer
                </td>
                <td>
                    300
                </td>
                <td>
                    $200
                </td>
            </tr>
            <tr class="tenantRow">
                <td>
                    Brett Lahm
                </td>
                <td>
                    231
                </td>
                <td>
                    $300
                </td>
            </tr>
            <tr class="tenantRow">
                <td>
                    Steve Kiene
                </td>
                <td>
                    6541
                </td>
                <td>
                    $300
                </td>
            </tr>
            <tr class="tenantRow">
                <td>
                    Chad Michel
                </td>
                <td>
                    321
                </td>
                <td>
                    $400
                </td>
            </tr>
            <tr class="tenantRow">
                <td>
                    Nick Sherill
                </td>
                <td>
                    987
                </td>
                <td>
                    $200
                </td>
            </tr>
            <tr class="tenantRow">
                <td>
                    Adam Miller
                </td>
                <td>
                    756
                </td>
                <td>
                    $100
                </td>
            </tr>
            <tr class="tenantRow">
                <td>
                    Doug Durham
                </td>
                <td>
                    234
                </td>
                <td>
                    $200
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
