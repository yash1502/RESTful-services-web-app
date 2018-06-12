<%-- 
    Document   : Restaurant
    Created on : Apr 29, 2018, 10:17:03 PM
    Author     : Ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
<script>
            var xmlhttp = new XMLHttpRequest();
            var url = "http://localhost:8080/TestingProj/webresources/generic";

            xmlhttp.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                    myFunction(this.responseText);
                }
            }
            xmlhttp.open("GET", url, true);
            xmlhttp.send();

            function myFunction(response) {
                var arr = JSON.parse(response);
                var i;
                var out = "<table>";

                for (i = 0; i < arr.length; i++) {
                    out += "<tr><td>" +
                            arr[i].id +
                            "</td><td>" +
                            arr[i].name +
                            "</td><td>" +
                            arr[i].rating +
                            "</td><td>" +
                             arr[i].address +
                            "</td></tr>";
                }
                out += "</table>";
                document.getElementById("demo").innerHTML = out;
            }
        </script>



</head>
<body>

<h2></h2>

<!--<table>
  <tr>
    <th>Company</th>
    <th>Contact</th>
    <th>Country</th>
  </tr>
  <tr>
    <td>Alfreds Futterkiste</td>
    <td>Maria Anders</td>
    <td>Germany</td>
  </tr>
  <tr>
    <td>Centro comercial Moctezuma</td>
    <td>Francisco Chang</td>
    <td>Mexico</td>
  </tr>
  <tr>
    <td>Ernst Handel</td>
    <td>Roland Mendel</td>
    <td>Austria</td>
  </tr>
  <tr>
    <td>Island Trading</td>
    <td>Helen Bennett</td>
    <td>UK</td>
  </tr>
  <tr>
    <td>Laughing Bacchus Winecellars</td>
    <td>Yoshi Tannamuri</td>
    <td>Canada</td>
  </tr>
  <tr>
    <td>Magazzini Alimentari Riuniti</td>
    <td>Giovanni Rovelli</td>
    <td>Italy</td>
  </tr>
</table>-->
<div id = "demo"></div>
</body>
</html>
