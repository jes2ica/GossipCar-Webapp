function createXMLHttp() {
	var xmlhttp;
	try {
		xmlhttp = new XMLHttpRequest();
	} catch (e) {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	return xmlhttp;
}
function delRecord(id) {

}
function ajaxSubmit() {
	var xmlhttp = createXMLHttp();
	xmlhttp.onreadystatechange = function() {
		if (4 == xmlhttp.readyState) {
			if (200 == xmlhttp.status) {
				alert(xmlhttp.responseXML);
				addToList();
			}
		}
	};
	var sql = "insert into msgbox values(null,'" + subject.value + "','"
			+ author.value + "','" + content.value + "','" + time.value + "')";
	var submitUrl = "/servlet/AddRecordServlet?sql=" + sql;
	xmlhttp.open("post", submitUrl, true);
	xmlhttp.setRequestHeader('Conten-type', 'application/x-www-form-urlencode');
	xmlhttp.send(null);
	return false;
}