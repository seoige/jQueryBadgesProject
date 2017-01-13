$(function() {
  // your code will go here
  $.ajax({
     url: 'https://www.codeschool.com/users/2764134.json',
     dataType: 'jsonp',
     success: function(response) {
       // handle response
       console.dir(response.courses.completed);
       addCompletedCourses(response.courses.completed);
     }
   });

   function addCompletedCourses(completedCourses){

     var $badges = $('#badges');

     completedCourses.forEach(function(item){
       var $course = $('<div />', {
         'class': 'course'
       }).appendTo($badges);

       $('<h3 />', {
         text: item.title
       }).appendTo($course);

     });
   }

});
