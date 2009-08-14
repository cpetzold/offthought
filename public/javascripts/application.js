// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

Application = function() {
  
  return {
    
    init: function() {
      var self = Application;      
      // $('.rte').rte();
      
      // $('#header').toggle
      
      $('form').validate();
      
      $('input:not(input:button), select, textarea')
        .focus(self.focusInputHandler)
        .blur(self.blurInputHandler);
      
      
    },
    
    focusInputHandler: function(e) {
      $(this).parent('div.row').animate({ backgroundColor : '#eee' });
      $(this).animate({ color : '#000000' });
    },
    
    blurInputHandler: function(e) {
      $(this).parent('div.row').animate({ backgroundColor : 'transparent' });
      $(this).animate({ color : '#666666' });
    }
    
  };
  
}();

$(Application.init);