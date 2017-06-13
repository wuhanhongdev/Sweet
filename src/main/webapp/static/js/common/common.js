var loadView = function (menuId,view) {
    var loadView = "/loadView?viewPath="+view;
    $("#main-title").html(menuId);
    $("#main-panel").load(loadView);
};