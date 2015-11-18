$(document).ready(function(){

  // alerts user with div (picture) location and restaurant name
  $('.info').click(function(){
    var name = $(this).siblings('div').children('p')[0].innerHTML;
    var address =  $(this).siblings('div').children('p')[1].innerHTML;    
    name += "\n "+address;
    alert(name);
  })

  $('.reset').click(function(){
    $('.gridster-cell').show();
  })
  
  $('.filter').click(function(){
    var imageClass = this.id;
      $('.gridster-cell').hide();
      $('.'+imageClass).show();
  });

  $('.nofilter').click(function(){
    if ($('.filter').is(":visible")){
      $('.filter').hide();
      $('.reset').hide();
    } else {
      $('.filter').show();
      $('.reset').show();
    }
  });

  $('#in').hide();
  $('#additional').hide();

  $('.formicon').click(function(){
    $('#in').toggle();
  })

});
    
