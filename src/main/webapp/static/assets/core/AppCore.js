var NotifytionType = {
    default:"info",
    success:"success",
    info:"info",
    warning:"warning",
    danger:"danger",
    rose:"rose",
    primary:"primary"
};
var AlertType = {
    normal:"basic",
    text:"title-and-text",
    successMessage:"success-message",
    warningMessageAndConfirmation:"warning-message-and-confirmation",
    warningMessageAndCancel:"warning-message-and-cancel",
    customTtml:"custom-html",
    autoClose:"auto-close",
    inputField:"input-field"
};
var AppCore = {
    /**
     * 删除成功框
     */
    deleteSuccess:function(){
        swal({
            title: '删除成功!',
            text: '您选择的记录已移除.',
            type: 'success',
            confirmButtonClass: "btn btn-success",
            buttonsStyling: false
        })
    },
    /**
     * 删除错误框
     * @param msg
     */
    deleteError:function(msg){
        swal({
            title: '删除失败',
            text: msg,
            type: 'error',
            confirmButtonClass: "btn btn-info",
            buttonsStyling: false
        })
    },
    /**
     * 删除信息确认对话框
     * @param url  ajax url
     * @param data ajax data
     * @param success 成功回调
     * @param error   失败回调
     */
    deleteConfirmation:function(url,data,success,error){
        swal({
            title: '确定删除吗?',
            text: "删除后将不能再恢复该记录!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonClass: 'btn btn-success',
            cancelButtonClass: 'btn btn-danger',
            confirmButtonText: '&nbsp;&nbsp;&nbsp;&nbsp;YES&nbsp;&nbsp;&nbsp;&nbsp;',
            buttonsStyling: false
        }).then(function() {
            $.ajax({
                dataType:"json",
                type:"POST",
                url:url,
                data:data,
                success:function (o) {
                    success(o);
                },
                error:function(o){
                    error(o);
                }
            });
        });
    },
    /**
     * ajax加载
     * @param url 路径
     * @param data  传递参数
     * @param success  成功回调
     */
    syncLoad:function(url,data,success){
        $.ajax({
            dataType:"json",
            type:"POST",
            url:url,
            data:data,
            success:function (o) {
                success(o);
            },
            error:function(o){
                console.info(o);
            }
        });
    },
    /**
     * dataTable 工具方法
     * @param id
     * @param url
     * @param columns
     */
    grid:function(id,url,columns){
        $("#"+id).dataTable({
            processing: true,
            bAutoWidth: true,
            bPaginate: true,
            aaSorting: [[0, "asc"]],
            sZeroRecords: "无记录",
            bDestroy:true,
            ajax:url,
            columns:columns,
            language: {
                "lengthMenu": "每页 _MENU_ 条记录",
                "zeroRecords": "没有找到记录",
                "info": "第 _PAGE_ 页 ( 总共 _PAGES_ 页 )",
                "infoEmpty": "无记录",
                "infoFiltered": "(从 _MAX_ 条记录过滤)"
            }
        });
    },

    /**
     * 在右下角显示通知信息
     * @param flag  类型
     * @param msg   消息
     */
    showNotification: function(flag,msg){
        $.notify({
            icon: "&nbsp",
            message: msg
        },{
            type: flag,
            timer: 100000,
            placement: {
                from: "bottom",
                align: "right"
            }
        });
    },
    /**
     * 加载中心页面
     * @param menuId 页面名称
     * @param view  页面路径
     */
    loadView:function(menuId,view){
        var loadView = "/loadView?viewPath="+view;
        $("#main-title").html(menuId);
        $("#main-panel").load(loadView);
    }
};