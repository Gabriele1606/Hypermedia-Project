<!---------------------------------------------------------------------------
Client script for JQUERY:AJAX -> PHP:MYSQL
---------------------------------------------------------------------------->

<html>
  <head>
    <script language="javascript" type="text/javascript" src="../jquery/jquery-1.12.4.js"></script>
  </head>
  <body>

  <!-------------------------------------------------------------------------
  1) Create some html content that can be accessed by jquery
  -------------------------------------------------------------------------->
  <h2> Client example </h2>
  <h3>Output: </h3>
  <div id="output">this element will be accessed by jquery and this text replaced</div>

  <script id="source" language="javascript" type="text/javascript">

  $(function () 
  {
    //-----------------------------------------------------------------------
    // 2) Send a http request with AJAX http://api.jquery.com/jQuery.ajax/
    //-----------------------------------------------------------------------
    $.ajax({                                      
      url: 'php_query.php',                  //the script to call to get data          
      data: "",                        //you can insert url arguments here to pass to php_query.php
                                       //for example "id=5&parent=6"
      dataType: 'json',                //data format      
      success: function(data)          //on receive of reply
      {
        var id = data[0];              //get id
        var name = data[1];           //get name
        var features = data[2];       //get features
        var capacity = data[3];       //get capacity
        var image = data[4];          //get images
        //--------------------------------------------------------------------
        // 3) Update html content
        //--------------------------------------------------------------------
        $('#output').html("<b>ID: </b>"+id+"<b> Name: </b>"+name+"<br>"+"<h3>Features</h3><p>"+features+"</p>"+"<h3>Capacity</h3><p>"+capacity+"</p>"+'<h3>Image:</h3><img src="'+image+'" />'); //Set output element html
        //recommend reading up on jquery selectors they are awesome 
        // http://api.jquery.com/category/selectors/
      } 
    });
  }); 

  </script>
  </body>
</html>