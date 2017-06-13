var AppCore = {
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
    grid:function(id,url,columns){
        $("#"+id).dataTable({
            processing: true,
            bAutoWidth: true,
            bPaginate: true,
            aaSorting: [[0, "asc"]],
            sZeroRecords: "No records...",
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
    }
};