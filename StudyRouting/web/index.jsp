<%-- 
    Document   : index
    Created on : 23-10-2015, 09:03:15
    Author     : Sindt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="viewApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Routing</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5//angular-route.js"></script>
        <script src="app.js"></script>
    </head>
    <body ng-controller="personController as ctrl">
        <header>
            <h1>Routing</h1>
        </header>
        <main class="container">
            <h2>Person List</h2>
            <table class="table" style="max-width: 500px;float: left;margin-top:20px;">
                <thead>
                    <tr>
                        <th>Name</th>    
                        <th>Details</th>    
                    </tr>
                </thead>
                <tbody ng-repeat="person in ctrl.persons">
                    <tr>
                        <td>
                            {{person.name}}
                        </td>
                        <td>
                            <a href="#/{{$index}}">{{person.id}}</a>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div style="margin: 15px;float: right">
                <!--This is were templates will be inserted-->
                <div ng-view="ng-view"></div>
            </div>
        </main>
    </body>
</html>
