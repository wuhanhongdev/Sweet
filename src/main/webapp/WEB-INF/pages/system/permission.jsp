<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-3">
            <div id="tree" style="height: 600px;overflow-y: auto;"></div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <form id="RegisterValidation" action="" method="" novalidate="novalidate">
                    <input id="menuId" name="id" type="hidden"/>
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
                        <div class="form-group label-floating is-empty">
                            <label class="control-label">
                                菜单名称
                                <small>*</small>
                            </label>
                            <input class="form-control" name="name" type="text" required="true" aria-required="true">
                        </div>
                        <div class="form-group label-floating is-empty">
                            <label class="control-label">
                                菜单名称
                                <small>*</small>
                            </label>
                            <div class="btn-group bootstrap-select show-tick open">
                                <button type="button" class="btn dropdown-toggle bs-placeholder select-with-transition" data-toggle="dropdown" role="button" title="Choose City" aria-expanded="true"><span class="filter-option pull-left">Choose City</span>&nbsp;<span class="bs-caret"><span class="caret"></span></span></button>
                                <div class="dropdown-menu open" role="combobox" style="max-height: 266px; overflow: hidden;">
                                    <ul class="dropdown-menu inner" role="listbox" aria-expanded="true" style="max-height: 266px; overflow-y: auto;">
                                        <li data-original-index="0" class="disabled"><a tabindex="-1" class="" data-tokens="null" role="option" href="#" aria-disabled="true" aria-selected="false">
                                            <span class="text"> Choose city</span><span class="material-icons  check-mark"> done </span></a></li>
                                        <li data-original-index="1"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Paris </span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="2"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Bucharest</span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="3"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Rome</span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="4"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">New York</span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="5"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Miami </span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="6"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Piatra Neamt</span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="7"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Paris </span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="8"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Bucharest</span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="9"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Rome</span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="10"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">New York</span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="11"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Miami </span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="12"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Piatra Neamt</span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="13"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Paris </span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="14"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Bucharest</span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="15"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Rome</span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="16"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">New York</span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="17"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Miami </span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="18"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Piatra Neamt</span><span class="material-icons  check-mark"> done </span></a></li></ul></div><select class="selectpicker" data-style="select-with-transition" multiple="" title="Choose City" data-size="7" tabindex="-98">
                                <option disabled=""> Choose city</option>
                                <option value="2">Paris </option>
                                <option value="3">Bucharest</option>
                                <option value="4">Rome</option>
                                <option value="5">New York</option>
                                <option value="6">Miami </option>
                                <option value="7">Piatra Neamt</option>
                                <option value="8">Paris </option>
                                <option value="9">Bucharest</option>
                                <option value="10">Rome</option>
                                <option value="11">New York</option>
                                <option value="12">Miami </option>
                                <option value="13">Piatra Neamt</option>
                                <option value="14">Paris </option>
                                <option value="15">Bucharest</option>
                                <option value="16">Rome</option>
                                <option value="17">New York</option>
                                <option value="18">Miami </option>
                                <option value="19">Piatra Neamt</option>
                            </select></div>
                        </div>
                        <div class="form-footer text-right">
                            <div class="pull-left text-rose text-center">
                                <small>*</small>
                                Required fields
                            </div>
                            <button type="submit" class="btn btn-rose btn-fill">Register</button>
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
