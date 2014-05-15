/*
iDrive JS framework
by: John Apostol
*/

(function($, window, undefined){

  var idm = {},
  windowHeight, windowWidth = 0;

  idm.hide = function() {
  };

  idm.getWindowSize = function() {
    function viewport() {
        // Gets the correct window size, with respect to scrollbar
        var e = window, a = 'inner';
        if (!('innerWidth' in window )) {
            a = 'client';
            e = document.documentElement || document.body;
        }
        return { width : e[ a+'Width' ] , height : e[ a+'Height' ] };
    }
    windowHeight = viewport().height;
    windowWidth = viewport().width;
  };

  idm.sizeContent = function() {
  };


  $(document).ready(function(){
    idm.getWindowSize();
    idm.sizeContent();
  });

  $(window).on("resize", function(){
    idm.getWindowSize();
    idm.sizeContent();
  });

})(jQuery, window);