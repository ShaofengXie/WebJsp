/**
 * 
 *//**
 * 
 */

function print(){
	var s2 = [0,0,0,0,0,0,0,0,0,0]	//列的总和数组
	for(var i = 1 ; i<=9 ; i++){
		var s1 = [0,0,0,0,0,0,0,0,0,0]  //行的总和数组
		$('#tid').append('<tr id = '+'\"t'+i+'\"'+'></tr>')
	for(var j = 1 ;j<=i;j++){
		
		$('#t'+i).append('<td name = '+'\"'+j+'\"'+'>'+j+"*"+i+"="+j*i+'</td>')
		
		s1[i] +=i*j;
		s2[j]=s2[j]+i*j;
	}
	for(var k = 1;k<=10-i;k++){
		$('#t'+i).append('<td></td>')
	}
	$('#t'+i).append('<td class = "yincang">'+s1[i]+'</td>')
	}
	$('#tid').append("<tr id = '10' ></tr>")
	for(var i = 1 ; i<=9;i++){
		$('#10').append("<td class='yincang'>"+s2[i]+"</td>")
	}
	$('#button01').attr('disabled','true')
	
}
function sum(){
	$('td').removeAttr('class')
}
 function cssdemo() {
	$('#form').attr('class', 'formcss')
	$('#tid').attr('class', 'table')
	$('td').attr('class','tdcss')
 }
