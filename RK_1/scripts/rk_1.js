function getValues() {
	console.log('Check');
	var m = document.getElementById('input').value;
	var mas = m.split(' ');
	var cnt = 0;
	var str_inp = "";
	var str_out = "";
	for (let i = 0; i < mas.length; i++){
		if (!isFinite(mas[i])) {
			alert("ERROR. Введите числовой массив!")
			break;
		}
		if (((mas[i] > 0) && (mas[i+1] < 0)) || ((mas[i] < 0) && (mas[i+1] > 0)))
			cnt++;
	}
	var s = ""
	for (let i = 0; i < mas.length; i++){
		s += (mas[i].toString() + " ");
	}
	var inp = document.getElementById('inp_2');
	inp.textContent = s;

	var s1 = ""
	for (let i = 0; i < mas.length; i++){
		s1 += (mas[i].toString() + " ");
	}
	var inp = document.getElementById('inp_2');
	inp.textContent = s;
	var res = document.getElementById('result');

}

