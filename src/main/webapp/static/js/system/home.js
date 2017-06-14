$(function(){
    init();
    initClick();
});

var init = function(){
    //初始化右侧菜单
    AppCore.syncLoad("/auth/loadAllPermissions",null,function(data){
        siderBar.init("siderbar",data);
    });
};

var initClick = function(){

};
