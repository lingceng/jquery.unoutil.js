//
// jquery.unoutil.js
// 
// 
//
$(function() {
  // prefix
  var prefix = "data-uno-";
  var tagname = function(name) {
    return prefix  + name;
  }
  var tagname_block = function(name) {
    return "["+ tagname(name) + "]"
  }

  //
  // reversely check the checkbox
  // @param revcheck name of target checkboxes to controll
  //
  var plugin = "revcheck";
  $(tagname_block(plugin)).on("click", function(evt) {
    var jq = $(this);
    var target = jq.attr(tagname(plugin));
    

    // do reverse check
    $("[name='"+target+"']").each(function(index, item) {
      item.checked = !item.checked;
    });
  
  });

});
