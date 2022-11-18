function print(mas) {
                // console.log('      [-|i |vsp|j]');
                var sp = '-';
                var k = 1;
                var vsp = 0;
                var j = 0;
                for (let i = 0; i < mas.length; i++) {
                    cnt = mas[i][1];
                    console.log(sp + mas[i][0]);
                    // var check = [k, i, vsp, j]
                    // console.log(check);
                    if (cnt != 0) {
                        sp += '-';
                        k++;
                    }
                    else {
                        var vsp = i;
                        for (let j = k; j >= 0; j--) {
                            // return 0;
                            k--;
                            sp = sp.substring(0, k);
                            if (mas[j][1] > 1) {
                                break;
                            }
                            // console.log(sp)bn;
                            var check = [k, i, vsp, j]
                            // console.log(check);
                        }
                    }
                }
            }