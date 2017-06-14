var siderBarHtml = "<li class='active'><a href='#'><i class='fa fa-home fa-2x'></i><p>&nbsp;&nbsp;&nbsp;&nbsp;首页&nbsp;&nbsp;&nbsp;&nbsp;</p></a></li>";
var siderBar = {
    init:function(ulId,data){
        data = data[0].nodes;

        if(data.length == 0){
            AppCore.showNotification(NotifytionType.danger,"系统还没有创建菜单");
            return;
        }
        var menuHtml = "";
        for(var i=0;i<data.length;i++){//一级菜单
            var menu = data[i];
            menuHtml += "<li>";
            menuHtml += "   <a data-toggle='collapse' href='#"+menu.id+"'><i class='fa fa-navicon fa-2x'></i><p>"+menu.text+"<b class='caret'></b></p></a>";
            var subMenus = menu.nodes;
            if(subMenus.length > 0){//二级菜单

                menuHtml += "<div class='collapse' id='"+menu.id+"'><ul class='nav'>";
                for(var j=0;j<subMenus.length;j++){
                    var subMenu = subMenus[j];
                    console.info("subMenu:"+subMenu);
                    menuHtml += "<li><a href='javascript:void(0)' onclick='AppCore.loadView(\""+subMenu.text+"\",\""+subMenu.url+"\")'>" +
                        "<i class='fa fa-navicon fa-lg'></i>"+subMenu.text+"</a></li>";
                }
                menuHtml += "</ul></div>";
            }
            menuHtml + "</li>";
        }
        console.info(menuHtml);
        $("#"+ulId).append(siderBarHtml+menuHtml);
    }
};

