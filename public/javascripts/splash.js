Splash = function() {
  
  return {
    
    init: function() {
      var self = Splash;      

      $('#bubble_small').fadeIn("slow", function() {
        $('#bubble_medium').fadeIn("slow", function() {
          $('#text').fadeIn("slow");
        });
      });
    },

    
  };
  
}();

$(Splash.init);