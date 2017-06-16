<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../include/includeBasic.jsp"/>
<jsp:include page="../include/includeForm.jsp"/>
<%
    String path = request.getContextPath();
%>
<html>
<body class="gray-bg">
<script>
    $().ready(function () {
        for (var selector in config)$(selector).chosen(config[selector]);
        $("#commentForm").validate();
        var e = "<i class='fa fa-times-circle'></i> ";
        $("#signupForm").validate({
            rules: {
                firstname: "required",
                lastname: "required",
                username: {required: !0, minlength: 2},
                password: {required: !0, minlength: 5},
                confirm_password: {required: !0, minlength: 5, equalTo: "#password"},
                email: {required: !0, email: !0},
                topic: {required: "#newsletter:checked", minlength: 2},
                agree: "required"
            },
            messages: {
                firstname: e + "请输入你的姓",
                lastname: e + "请输入您的名字",
                username: {required: e + "请输入您的用户名", minlength: e + "用户名必须两个字符以上"},
                password: {required: e + "请输入您的密码", minlength: e + "密码必须5个字符以上"},
                confirm_password: {required: e + "请再次输入密码", minlength: e + "密码必须5个字符以上", equalTo: e + "两次输入的密码不一致"},
                email: e + "请输入您的E-mail",
                agree: {required: e + "必须同意协议后才能注册", element: "#agree-error"}
            }
        }), $("#username").focus(function () {
            var e = $("#firstname").val(), r = $("#lastname").val();
            e && r && !this.value && (this.value = e + "." + r)
        })
    });
</script>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-6">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>简单示例</h5>
                </div>
                <div class="ibox-content">
                    <form class="form-horizontal m-t" id="commentForm">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">姓名：</label>
                            <div class="col-sm-8">
                                <input id="cname" name="name" minlength="2" type="text" class="form-control" required="" aria-required="true">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">E-mail：</label>
                            <div class="col-sm-8">
                                <input id="cemail" type="email" class="form-control " name="email" required="" aria-required="true">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">简单示例：</label>
                            <div class="col-sm-8">
                                <input class="form-control layer-date" readonly style="margin-top: 0px;" placeholder="YYYY-MM-DD hh:mm:ss" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">简单示例：</label>
                            <div class="col-sm-8">
                                <select data-placeholder="选择省份..." class="chosen-select-deselect" tabindex="-1">
                                    <option value="">请选择省份</option>
                                    <option value="110000" hassubinfo="true">北京</option>
                                    <option value="120000" hassubinfo="true">天津</option>
                                    <option value="130000" hassubinfo="true">河北省</option>
                                    <option value="140000" hassubinfo="true">山西省</option>
                                    <option value="150000" hassubinfo="true">内蒙古自治区</option>
                                    <option value="210000" hassubinfo="true">辽宁省</option>
                                    <option value="220000" hassubinfo="true">吉林省</option>
                                    <option value="230000" hassubinfo="true">黑龙江省</option>
                                    <option value="310000" hassubinfo="true">上海</option>
                                    <option value="320000" hassubinfo="true">江苏省</option>
                                    <option value="330000" hassubinfo="true">浙江省</option>
                                    <option value="340000" hassubinfo="true">安徽省</option>
                                    <option value="350000" hassubinfo="true">福建省</option>
                                    <option value="360000" hassubinfo="true">江西省</option>
                                    <option value="370000" hassubinfo="true">山东省</option>
                                    <option value="410000" hassubinfo="true">河南省</option>
                                    <option value="420000" hassubinfo="true">湖北省</option>
                                    <option value="430000" hassubinfo="true">湖南省</option>
                                    <option value="440000" hassubinfo="true">广东省</option>
                                    <option value="450000" hassubinfo="true">广西壮族自治区</option>
                                    <option value="460000" hassubinfo="true">海南省</option>
                                    <option value="500000" hassubinfo="true">重庆</option>
                                    <option value="510000" hassubinfo="true">四川省</option>
                                    <option value="520000" hassubinfo="true">贵州省</option>
                                    <option value="530000" hassubinfo="true">云南省</option>
                                    <option value="540000" hassubinfo="true">西藏自治区</option>
                                    <option value="610000" hassubinfo="true">陕西省</option>
                                    <option value="620000" hassubinfo="true">甘肃省</option>
                                    <option value="630000" hassubinfo="true">青海省</option>
                                    <option value="640000" hassubinfo="true">宁夏回族自治区</option>
                                    <option value="650000" hassubinfo="true">新疆维吾尔自治区</option>
                                    <option value="710000" hassubinfo="true">台湾省</option>
                                    <option value="810000" hassubinfo="true">香港特别行政区</option>
                                    <option value="820000" hassubinfo="true">澳门特别行政区</option>
                                    <option value="990000" hassubinfo="true">海外</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">简单示例：</label>
                            <div class="col-sm-8">
                                <select data-placeholder="选择省份..." multiple class="chosen-select" tabindex="2">
                                    <option value="">请选择省份</option>
                                    <option value="110000" hassubinfo="true">北京</option>
                                    <option value="120000" hassubinfo="true">天津</option>
                                    <option value="130000" hassubinfo="true">河北省</option>
                                    <option value="140000" hassubinfo="true">山西省</option>
                                    <option value="150000" hassubinfo="true">内蒙古自治区</option>
                                    <option value="210000" hassubinfo="true">辽宁省</option>
                                    <option value="220000" hassubinfo="true">吉林省</option>
                                    <option value="230000" hassubinfo="true">黑龙江省</option>
                                    <option value="310000" hassubinfo="true">上海</option>
                                    <option value="320000" hassubinfo="true">江苏省</option>
                                    <option value="330000" hassubinfo="true">浙江省</option>
                                    <option value="340000" hassubinfo="true">安徽省</option>
                                    <option value="350000" hassubinfo="true">福建省</option>
                                    <option value="360000" hassubinfo="true">江西省</option>
                                    <option value="370000" hassubinfo="true">山东省</option>
                                    <option value="410000" hassubinfo="true">河南省</option>
                                    <option value="420000" hassubinfo="true">湖北省</option>
                                    <option value="430000" hassubinfo="true">湖南省</option>
                                    <option value="440000" hassubinfo="true">广东省</option>
                                    <option value="450000" hassubinfo="true">广西壮族自治区</option>
                                    <option value="460000" hassubinfo="true">海南省</option>
                                    <option value="500000" hassubinfo="true">重庆</option>
                                    <option value="510000" hassubinfo="true">四川省</option>
                                    <option value="520000" hassubinfo="true">贵州省</option>
                                    <option value="530000" hassubinfo="true">云南省</option>
                                    <option value="540000" hassubinfo="true">西藏自治区</option>
                                    <option value="610000" hassubinfo="true">陕西省</option>
                                    <option value="620000" hassubinfo="true">甘肃省</option>
                                    <option value="630000" hassubinfo="true">青海省</option>
                                    <option value="640000" hassubinfo="true">宁夏回族自治区</option>
                                    <option value="650000" hassubinfo="true">新疆维吾尔自治区</option>
                                    <option value="710000" hassubinfo="true">台湾省</option>
                                    <option value="810000" hassubinfo="true">香港特别行政区</option>
                                    <option value="820000" hassubinfo="true">澳门特别行政区</option>
                                    <option value="990000" hassubinfo="true">海外</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">说明：</label>
                            <div class="col-sm-8">
                                <textarea id="ccomment" name="comment" class="form-control" required="" aria-required="true"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-3">
                                <button class="btn btn-primary" type="submit">提交</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>完整验证表单</h5>
                </div>
                <div class="ibox-content">
                    <form class="form-horizontal m-t" id="signupForm">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">姓氏：</label>
                            <div class="col-sm-8">
                                <input id="firstname" name="firstname" class="form-control" type="text">
                                <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 这里写点提示的内容</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">名字：</label>
                            <div class="col-sm-8">
                                <input id="lastname" name="lastname" class="form-control" type="text" aria-required="true" aria-invalid="false" class="valid">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">用户名：</label>
                            <div class="col-sm-8">
                                <input id="username" name="username" class="form-control" type="text" aria-required="true" aria-invalid="true" class="error">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">密码：</label>
                            <div class="col-sm-8">
                                <input id="password" name="password" class="form-control" type="password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">确认密码：</label>
                            <div class="col-sm-8">
                                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                                <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 请再次输入您的密码</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">E-mail：</label>
                            <div class="col-sm-8">
                                <input id="email" name="email" class="form-control" type="email">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-8 col-sm-offset-3">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" class="checkbox" id="agree" name="agree">
                                        我已经认真阅读并同意《H+使用协议》
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-8 col-sm-offset-3">
                                <button class="btn btn-primary" type="submit">提交</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
