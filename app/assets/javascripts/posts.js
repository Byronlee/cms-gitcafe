$('a.js-pjax').pjax('#data-pjax-container', { timeout: null, error: function(xhr, err){
     alert("失败")
   }})
$(document).ready(function(){

});
