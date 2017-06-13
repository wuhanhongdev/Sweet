var loadAllPermissions = function(){
    AppCore.syncLoad("/auth/loadAllPermissions", null, function (obj) {
        $('#tree').treeview({
            data: obj
        });
    });
};

$(function(){
    loadAllPermissions();
    $("#btn-create").click(function(){
        var tree = $('#tree').treeview('getSelected');

        if(tree.length == 0){
            AppCore.showNotification(NotifytionType.danger,"至少选择一个父节点");
            return;
        }
        if(tree.length > 1){
            AppCore.showNotification(NotifytionType.danger,"每次只能选择一个父节点");
            return;
        }

        var selectNode = tree[0];
        $("#pname").val(selectNode.text);
        $("#pid").val(selectNode.id);
    });
});
