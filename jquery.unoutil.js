//
// jquery.unoutil.js
// 
// 
//
$(function() {
  // prefix
  var unotag = function(name) {
    var prefix = "data-uno-";
    return "[" + prefix  + name + "]"
  }

  //
  // reversely check the checkbox
  // @param revcheck name of target checkboxes to controll
  //
  var tag = unotag("revcheck");
  $(tag).on("click", function(obj, evt) {
    var jq = $(this);
    var name = jq.attr(tag);

    // do reverse check
    $("[name="+name+"]").each(function(obj, evt) {
      obj.checked = !obj.checked 
    });
  
  });

});
