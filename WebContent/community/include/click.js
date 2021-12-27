var $list1=$('#list1').attr('background-color');
$('#list1').click(function(){
	$(this).css("background-color","rgb(0, 0, 40)");
    $('#titlelist').css("color","white");
    $('#list2').css("background-color","white");
    $('#piclist').css("color","rgb(0, 0, 40)");
    $('#table1').css('display','table');
    $('#table2').css('display','none');
   
});
$('#list2').click(function(){
	$(this).css("background-color","rgb(0, 0, 40)");
    $('#piclist').css("color","white");
    $('#list1').css("background-color","white");
    $('#titlelist').css("color","rgb(0, 0, 40)");
    $('#table1').css('display','none');
    $('#table2').css('display','block');
    $('#page').css('float','left');
    $('#page').css('width','100%');
    $('#search').css('float','left');
});