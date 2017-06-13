<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="card-content">
            <button class="btn btn-success"><i class="fa fa-plus"></i> Create Child</button>
            <button class="btn btn-primary"><i class="fa fa-pencil-square-o"></i> Modify</button>
            <button class="btn btn-danger"><i class="fa fa-close"></i> Delete</button>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3" style="padding: 0px;">
            <div id="tree" style="height: 600px;overflow-y: auto;"></div>
        </div>
        <div class="col-md-9">
            <div class="card">
                <form id="menu-form" action="" method="" novalidate="novalidate">
                    <input id="menuId" name="id" type="hidden"/>
                    <input id="pid" name="pid" type="hidden"/>
                    <div class="card-header card-header-icon" data-background-color="rose">
                        <i class="fa fa-navicon fa-2x"></i>
                    </div>
                    <div class="card-content">
                        <h4 class="card-title">系统菜单</h4>
                        <div class="form-group label-floating is-empty">
                            <label class="control-label">
                                父级菜单
                            </label>
                            <input class="form-control" name="pname" type="text" required="true" readonly="readonly" aria-required="true">
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group label-floating is-empty">
                                    <label class="control-label">
                                        菜单名称
                                        <small>*</small>
                                    </label>
                                    <input class="form-control" name="name" type="text" required="true" aria-required="true">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group label-floating is-empty">
                                    <label class="control-label">
                                        菜单名称
                                        <small>*</small>
                                    </label>
                                    <input class="form-control" name="name" type="text" required="true" aria-required="true">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group label-floating is-empty">
                                    <label class="control-label">
                                        菜单状态
                                        <small>*</small>
                                    </label>
                                    <select class="form-control">
                                        <option value="-1"></option>
                                        <option value="0">&nbsp;&nbsp;&nbsp;&nbsp;停用&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                        <option value="1">&nbsp;&nbsp;&nbsp;&nbsp;启用&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group label-floating is-empty">
                                    <label class="control-label">
                                        菜单类型
                                        <small>*</small>
                                    </label>
                                    <select class="form-control">
                                        <option value="-1"></option>
                                        <option value="0">&nbsp;&nbsp;&nbsp;&nbsp;停用&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                        <option value="1">&nbsp;&nbsp;&nbsp;&nbsp;启用&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="form-group label-floating is-empty">
                            <label class="control-label">
                                访问路径
                                <small>*</small>
                            </label>
                            <input class="form-control" name="url" type="text" required="true" aria-required="true">
                        </div>
                        <div class="form-footer text-right">
                            <button type="submit" class="btn btn-rose btn-fill">&nbsp;&nbsp;提交&nbsp;&nbsp;</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    $(function () {
        AppCore.syncLoad("<%=path%>/auth/loadAllPermissions", null, function (obj) {
            $('#tree').treeview({
                data: obj
            });
            $('#tree').on('nodeSelected', function (event, data) {
                console.info('nodeSelected====>' + data.text);
            });
        });
    });
</script>
</body>
</html>
