var app = angular.module('viewApp', ['ngRoute']);
app.config(function ($routeProvider) {
    $routeProvider.when("/:index", {
        templateUrl: "views/view.html",
        controller: "personController"
    })
});
app.controller('personController', function ($routeParams) {
    var self = this;
    self.persons = [{id: 1, name: "Jens", age: 18}
        , {id: 2, name: "Peter", age: 23}
        , {id: 3, name: "Hanne", age: 23}];

    if (angular.isDefined($routeParams.index)) {
        var i = $routeParams.index;
        self.person = self.persons[i];
    }
});




