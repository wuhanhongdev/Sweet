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
        laydate({elem: "#hello", event: "focus"});
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
                                <input id="cemail" type="email" class="form-control" name="email" required="" aria-required="true">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">外部js调用：</label>
                            <div class="col-sm-10">
                                <input id="hello" class="laydate-icon form-control layer-date">
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
