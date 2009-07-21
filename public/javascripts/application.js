// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

Application = function() {
  
  return {
    
    init: function() {
      var self = Application;
  
      $('#container').corners('10px');
      $('#menu li a').corners('5px');
  
    }
    
  };
  
}();

$(Application.init);