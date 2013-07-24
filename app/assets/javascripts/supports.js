$('a[ata-remote="true"]').on('ajax:error', function(event, xhr, status) {
    alert("网络异常，操作失败，请稍后再试！");
}).on('ajax:success', function(event, xhr, status) {
    alert("成功")
}).on('ajax:beforeSend', function(event, xhr, status) {
    alert("成功")
});

