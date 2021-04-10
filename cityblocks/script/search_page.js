
searchTerm = $('#topheading').text();
   

       
    var url = "https://en.wikipedia.org/w/api.php?action=opensearch&search="+
    searchTerm +"&format=json&callback=?";
       
$.ajax({
    url:url,
    type: "GET",
    async: false,
    dataType: "json",
    success: function(data, status, jqXHR){
        console.log(data);
           
    for(var i = 0; i < data[1].length; i++){
            $("#content").prepend("<div><div class='well'><a href="+data[3][i]+"><h4>"+data[1][i]+"</h4>" + "<p>" + data[2][1] + "</p></a></div></div>");
        }
    }
         
 })

 getData();

 async function getData(){
     const response = await fetch('district_wise.csv');
     const data = await response.text();
   
     const rows = data.split('\n').slice(1);
     
     rows.forEach(elt => {
         const row = elt.split(',').slice(4);
         const dist = row[0];
         const cases = row[1];
         if(dist == searchTerm){
        
         console.log(dist,cases );

         if(cases < 8000){
            $.post("covid-19-green-zone.php",
            {
              cityname: searchTerm,
              totalcases: cases
            },
            function(data, status){
              $(".svg-covid").append(data);
            });
         }
         else if(cases < 20000){
            $.post("covid-19-yellow-zone.php",
            {
              cityname: searchTerm,
              totalcases: cases
            },
            function(data, status){
                $(".svg-covid").append(data);
            });
         }
        else if(cases > 20000){
            $.post("covid-19-red-zone.php",
            {
              cityname: searchTerm,
              totalcases: cases
            },
            function(data, status){
                $(".svg-covid").append(data);
            });
         }

         }

     });

 }


 $(".cards_basic").click(function(){
     var src = $(this).children().text();
     console.log(src);
     location.replace("area_detail.php?areaname="+src+"&cityname="+searchTerm);
 })

