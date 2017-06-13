<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="card-content">
            <button id="btn-create" class="btn btn-success"><i class="fa fa-plus"></i> Create Child</button>
            <button id="btn-modify" class="btn btn-primary"><i class="fa fa-pencil-square-o"></i> Modify</button>
            <button id="btn-delete" class="btn btn-danger"><i class="fa fa-close"></i> Delete</button>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3" style="padding: 0px;">
            <div id="tree" style="height: 600px;overflow-y: auto;"></div>
        </div>
        <div class="col-md-9">
            <div class="card">
                <div class="card-header card-header-icon" data-background-color="rose">
                    <i class="fa fa-navicon"></i>
                </div>
                <div class="card-content">
                    <h4 class="card-title">系统菜单</h4>
                    <form class="form-horizontal" id="form-permission">
                        <input id="pid" name="pid" type="hidden">
                        <input id="id" name="id" type="hidden">
                        <div class="row">
                            <label class="col-md-3 label-on-left">父级菜单</label>
                            <div class="col-md-7">
                                <div class="form-group label-floating is-empty">
                                    <label class="control-label"></label>
                                    <input class="form-control" id="pname" name="pname" type="text" required="true" readonly="readonly" aria-required="true">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-md-3 label-on-left">菜单名称</label>
                            <div class="col-md-7">
                                <div class="form-group label-floating is-empty">
                                    <label class="control-label"></label>
                                    <input class="form-control" id="name" name="name" type="text" required="true" aria-required="true">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-md-3 label-on-left">菜单Memo</label>
                            <div class="col-md-7">
                                <div class="form-group label-floating is-empty">
                                    <label class="control-label"></label>
                                    <input class="form-control" id="memo" name="memo" type="text" required="true" aria-required="true">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-md-3 label-on-left">菜单状态</label>
                            <div class="col-md-7">
                                <div class="form-group label-floating is-empty">
                                    <label class="control-label"></label>
                                    <select name="status" id="status" class="form-control">
                                        <option value="-1"></option>
                                        <option value="1">&nbsp;&nbsp;&nbsp;&nbsp;启用&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                        <option value="0">&nbsp;&nbsp;&nbsp;&nbsp;停用&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-md-3 label-on-left">菜单类型</label>
                            <div class="col-md-7">
                                <div class="form-group label-floating is-empty">
                                    <label class="control-label"></label>
                                    <select name="type" id="type" class="form-control">
                                        <option value="-1"></option>
                                        <option value="1">&nbsp;&nbsp;&nbsp;&nbsp;系统菜单&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                        <option value="2">&nbsp;&nbsp;&nbsp;&nbsp;模块菜单&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                        <option value="3">&nbsp;&nbsp;&nbsp;&nbsp;页面菜单&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-md-3 label-on-left">访问路径</label>
                            <div class="col-md-7">
                                <div class="form-group label-floating is-empty">
                                    <label class="control-label"></label>
                                    <input class="form-control" id="url" name="url" type="text" required="true" aria-required="true">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-md-3 label-on-left">备注</label>
                            <div class="col-md-7">
                                <div class="form-group label-floating is-empty">
                                    <label class="control-label"></label>
                                    <input class="form-control" id="comment" name="comment" type="text" required="true" aria-required="true">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-md-3"></label>
                            <div class="col-md-9">
                                <div class="form-group form-button">
                                    <button id="btn-submit" type="button" class="btn btn-fill btn-rose">提交</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<%=path%>/static/js/system/permissions.js" type="application/javascript"></script>
</body>
</html>
