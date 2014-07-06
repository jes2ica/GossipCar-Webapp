/**
 * 
 */

//Get Request
/*
addEvent(document,'click',a);

function a(){
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange=function(){
		if(xhr.readyState == 4){
			alert(xhr.responseText);
		}
		//alert(xhr.readyState);
		
	}; 
	xhr.open('get','demo.jsp?name=Jessica',true);
	xhr.send(null);
	
}*/


//Post Request
addEvent(document,'click',a);

function a(){
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange=function(){
		if(xhr.readyState == 4){
			alert(xhr.responseText);
		}
		//alert(xhr.readyState);
		
	}; 
	xhr.open('post','demo.jsp',true);
	xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	xhr.send('name=Jessica');
	
}





//header
/*
addEvent(document,'click',a);

function a(){
	var xhr = new XMLHttpRequest();
	xhr.open('get','index.jsp',false);
	xhr.setRequestHeader('MyHeader', 'Jessica');
	xhr.send(null);
	// alert(xhr.getResponseHeader('Content-Type'));
	
	//alert(xhr.statusText);
}
*/

/* tongbu
addEvent(document,'click',a);

function a(){
	var xhr = new XMLHttpRequest();
	xhr.open('get','index.jsp',false);
	xhr.send(null);
	//alert(xhr.responseText);
	alert(xhr.status);
	alert(xhr.statusText);
}
*/

/*yibu

addEvent(document,'click',a);

function a(){
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange=function(){
		if(xhr.readyState == 4){
			alert(xhr.getresponseTextHeaders());
		}
		//alert(xhr.readyState);
		
	}; 
	xhr.open('get','index.jsp',true);
	xhr.send(null);
	
}
*/

function addEvent( obj, type, fn ) { 
	if ( obj.attachEvent ) { 
	obj['e'+type+fn] = fn; 
	obj[type+fn] = function(){obj['e'+type+fn]( window.event );};
	obj.attachEvent( 'on'+type, obj[type+fn] ); 
	} else 
	obj.addEventListener( type, fn, false ); 
	} 
	function removeEvent( obj, type, fn ) { 
	if ( obj.detachEvent ) { 
	obj.detachEvent( 'on'+type, obj[type+fn] ); 
	obj[type+fn] = null; 
	} else 
	obj.removeEventListener( type, fn, false ); 
	}

