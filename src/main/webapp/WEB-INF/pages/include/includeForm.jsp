<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<!-- css -->
<link href="<%=path%>/static/hplus/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="<%=path%>/static/hplus/css/plugins/chosen/chosen.css" rel="stylesheet">
<link href="<%=path%>/static/hplus/css/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
<link href="<%=path%>/static/hplus/css/plugins/cropper/cropper.min.css"  rel="stylesheet">
<link href="<%=path%>/static/hplus/css/plugins/switchery/switchery.css" rel="stylesheet">
<link href="<%=path%>/static/hplus/css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">
<link href="<%=path%>/static/hplus/css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">
<link href="<%=path%>/static/hplus/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
<link href="<%=path%>/static/hplus/css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
<link href="<%=path%>/static/hplus/css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">
<link href="<%=path%>/static/hplus/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
<link href="<%=path%>/static/hplus/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">


<!-- js -->
<script src="<%=path%>/static/hplus/js/plugins/iCheck/icheck.min.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/validate/jquery.validate.min.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/validate/messages_zh.min.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/chosen/chosen.jquery.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/jsKnob/jquery.knob.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/jasny/jasny-bootstrap.min.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/prettyfile/bootstrap-prettyfile.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/nouslider/jquery.nouislider.min.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/switchery/switchery.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/ionRangeSlider/ion.rangeSlider.min.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/clockpicker/clockpicker.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/cropper/cropper.min.js"></script>
<script src="<%=path%>/static/hplus/js/plugins/layer/laydate/laydate.js"></script>

<script>
    $.validator.setDefaults({
        highlight: function (e) {
            $(e).closest(".form-group").removeClass("has-success").addClass("has-error")
        }, success: function (e) {
            e.closest(".form-group").removeClass("has-error").addClass("has-success")
        }, errorElement: "span", errorPlacement: function (e, r) {
            e.appendTo(r.is(":radio") || r.is(":checkbox") ? r.parent().parent().parent() : r.parent())
        }, errorClass: "help-block m-b-none", validClass: "help-block m-b-none"
    })
    var config = {
        ".chosen-select": {},
        ".chosen-select-deselect": {allow_single_deselect: !0},
        ".chosen-select-no-single": {disable_search_threshold: 10},
        ".chosen-select-no-results": {no_results_text: "Oops, nothing found!"},
        ".chosen-select-width": {width: "95%"}
    };
    for (var selector in config)$(selector).chosen(config[selector]);
</script>
