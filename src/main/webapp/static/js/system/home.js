$(function(){
    initClick();
});
var initClick = function(){
    $("#author").click(function(){
        AppCore.deleteConfirmation("/auth/loadAllPermissions",null,function(obj){
            AppCore.deleteSuccess();
        },function(o){
            AppCore.deleteError("您所选的记录删除失败")
        });
    });
};
