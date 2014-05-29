$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
 
//RELEASE 1:
   var bodyElement = $('body')
 
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
 $('h1').css({
  'color': 'blue',
  'border': '2px solid',
  'visibility': 'visible'
  });
   $('div.mascot > h1').html("Coyotes")
 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 
 $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'https://bitbucket-assetroot.s3.amazonaws.com/c/photos/2013/Dec/10/pauleyj-avatar-496208782-4_avatar.png')
  });

 $('img').on('mouseleave', function(e){
    e.preventDefault();
    $(this).attr('src', 'http://photos2.meetupstatic.com/photos/sponsor/d/0/b/8/iab120x90_1853432.jpeg');
  });
 
//RELEASE 4 : Experiment on your own
 
 $('img').click(function(){
    $(this).animate({
      width: '100px',
      height: '100px',
      boder: 'solid'
    }, 1000);
  });
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
