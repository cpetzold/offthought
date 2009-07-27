// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

Application = function() {
  
  return {
    
    init: function() {
      var self = Application;
  
      $('#content').corners('10px');
      $('#menu li a, #menu li span').corners('5px');
      
      $('.rte').rte('http://localhost:3000/stylesheets/post.css', 'public/images/rte');
  
    }
    
  };
  
}();

$(Application.init);