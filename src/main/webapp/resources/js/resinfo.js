//더보기 기능
$(function(){
	$("#list>li").hide();
	$("#list>li").slice(0,4).show();
});

function more(){
    if($('h4').find('span').html() == "더보기" ){
       $('#list>li').show();
       $('#more').text('접기');
     }else{
       $("#list>li").hide();
       $('#list>li').slice(0,4).show();
       $('#more').text('더보기');
    }
}

//url 복사 기능
function clip(){

	var url = '';
	var textarea = document.createElement("textarea");
	document.body.appendChild(textarea);
	url = window.document.location.href;
	textarea.value = url;
	textarea.select();
	document.execCommand("copy");
	document.body.removeChild(textarea);
	alert("URL이 복사되었습니다.")
}

