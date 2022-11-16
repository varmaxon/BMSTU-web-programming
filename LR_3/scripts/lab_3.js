function tree(doc) {
	let numtags = 0;
	if (n.nodeType == 1)    //(Если тег) Проверяем, является ли n объектом Element
		numtags++;
	var children = n.childNodes;
	console.log('Check');
	for(var i = 0; i < children.length; i++) { 
		numtags += countTags(children[i]);
	}
	return numtags; // Возвращаем общее число тегов
}


// var parent = document.querySelectorAll("body");
// for (let i = 0; i < 4; i++) {
// 	let firstChild = parent[0].firstElementChild.nodeName;
// 	console.log(firstChild);
// }

