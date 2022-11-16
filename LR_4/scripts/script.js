function getValues() {
	let numbers = Array.from(document.querySelectorAll('input')).map(inputElement => inputElement.value)

	var table = document.querySelector('#table');
	addRow(table, numbers); }

function addRow(table, data) {
	var tr = document.createElement('tr');
	for (let i = 0; i < data.length; i++){
		var td = document.createElement('td');
		td.innerHTML = data[i];
		tr.appendChild(td);
	}
	var btn = document.createElement("BUTTON");
	btn.style.backgroundColor = '#fff0f5';
	btn.innerHTML = "+";
	btn.style.width = '40px';
	btn.style.margin = '10px';

	tr.appendChild(btn).onclick = function() { 
		this.textContent = '📌';
		this.style.backgroundColor = '#90ee90'; 
		myFunction(data); }
	table.appendChild(tr);
}

var order = [];
function myFunction(row_object) { order.push(row_object); }

function Add_order() {
	var table_2 = document.querySelector('#table_2');
	
	for (let i = 0; i < order.length; i++){
		var tr = document.createElement('tr');

		for (let j = 0; j < order[i].length; j++){
			var td = document.createElement('td');
			td.innerHTML = order[i][j];
			tr.appendChild(td); }
		table_2.appendChild(tr);
	}
}

function summa() {
	let sum = 0;
	for (let i = 0; i < order.length; i++) {
		sum += Number(order[i][1]);
	}
	document.getElementById('paragraph').innerHTML = 'Итого: ' + sum + ' руб.';
}

function mouseOver(el) { el.style.backgroundColor = "#ffa07a"; console.log('Check'); }

function mouseOut(el)  { el.style.backgroundColor = "#ffe4e1"; }
