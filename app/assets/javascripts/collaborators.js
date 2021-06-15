var ready = function() {
    console.log(123)
  };
  
  $(document).ready(ready);
  $(document).on('page:load', ready);