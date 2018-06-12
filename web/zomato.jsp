<%-- 
    Document   : zomato
    Created on : May 1, 2018, 1:01:38 PM
    Author     : Ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="paging.js"></script>
        
        <script>

            var url = "https://developers.zomato.com/api/v2.1/categories";
            //url += '/1/classes/birthday';
            var data_obj;
            var geturl = fetch(url, {
                method: 'GET',
                headers: {
                    'Accept': 'application/json',
                    'user-key': '3be264ec693e1b6f2b8aeb7443a9175d',
                    'Content-Type': 'application/json',
                },
            })
                    .then(function (response) {
                        return response.text();
                    })
                    .then(function (data) {
                        console.log(data); //this will just be text

                        // document.getElementById("encoded").innerHTML = data;
                        return data;
                    })
                    .then(function (data) {

                        var arr = JSON.parse(data);
                        console.log(arr);
                        var i;
                        var out = "<select id = 'category' class='form-control' style='cornflowerblue'>";
                        var array = arr.categories;
                        for (i = 0; i < arr.categories.length; i++) {
                            out += "<option value=" +
                                    array[i].categories.name +
                                    ">" + array[i].categories.name + "</option>";
                        }
                        out += "</select>";
                        document.getElementById("demo").innerHTML = out;
                        return arr;


                    });

        </script>
        <script>
            var pager;
            function SearchClick() {
                //  curl -X GET --header "Accept: application/json" --header "user-key: 92930351443868b639ff594cb8846e07" "https://developers.zomato.com/api/v2.1/search?entity_type=city&category=Catching%20up"


                var url = "https://developers.zomato.com/api/v2.1/search?entity_\n\
        start=1&count=200&category=";
                url += document.getElementById("category").value + "%20up"
                //url += '/1/classes/birthday';
                var data_obj;
                var geturl = fetch(url, {
                    method: 'GET',
                    headers: {
                        'Accept': 'application/json',
                        'user-key': '3be264ec693e1b6f2b8aeb7443a9175d',
                        'Content-Type': 'application/json',
                    },
                })
                        .then(function (response) {
                            return response.text();
                        })
                        .then(function (data) {
                           // console.log(data); //this will just be text

                            // document.getElementById("encoded").innerHTML = data;
                            return data;
                        })
                        .then(function (data) {

                            var arr = JSON.parse(data);
                            console.log(arr);
                            var i, j;
                            var out = "<table id='tblData' cellpadding = '1' class='table table-bordered table-striped table-hover'>";
                            out += "<tr><thead><th>" +
                                    "Restaurant Name" +
                                    "</th><th>" +
                                    "Zomato Restaurant URL" +
                                    "</th><th>" +
                                    "Cuisines" +
                                    "</th><th>" +
                                    "Average Cost For Two" +
                                    "</th><th>" +
                                    "Street Address" +
                                    "</th><th>" +
                                    "User Average Ratings" +
                                    "</th></tr></thead>"
                            var array = arr.restaurants;
                            for (i = 0; i < array.length; i++) {

                                out += "<tr class ='active'><td>" +
                                        array[i].restaurant.name +
                                        "</td><td><a href ='" +
                                        array[i].restaurant.url +
                                        "'>" +array[i].restaurant.url +"</a></td><td>" +
                                        array[i].restaurant.cuisines +
                                        "</td><td>$" +
                                        array[i].restaurant.average_cost_for_two +
                                        "</td><td>" +
                                        array[i].restaurant.location.address + "," +
                                        array[i].restaurant.location.city + "," +
                                        array[i].restaurant.location.zip +
                                        "</td><td>" +
                                        array[i].restaurant.user_rating.aggregate_rating +
                                        "</td></tr>";
                            }
                            out += "</table>";
                            document.getElementById("restaurantable").innerHTML = out;
                            return arr;
                        });
            }

        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="jumbotron text-center">
            <h1>Search Restaurants by Category from Zomato REST API</h1>
            <p>Select category</p> 
        </div>
        <div class="col-sm-2">
        </div>
        <div class="col-sm-8">
            <h3>Magic Happens Here Select Your Choice</h3>
            <div id="demo"size="50">  </div>
            </br>
            <button type="button" class="btn btn-default btn-success" onclick="SearchClick()">Search</button>
            <br/>
            <div  id="restaurantable" style="margin-top:2%;"></div>
            <div id="pageNavPosition"></div>
        </div>
        <div class="col-sm-2" style="color: cornflowerblue">
        </div>
    </div>
</div>

</body>
</html>