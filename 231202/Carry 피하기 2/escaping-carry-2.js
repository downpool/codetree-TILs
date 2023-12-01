let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');
let max = Number.MIN_SAFE_INTEGER;
for(let i = 1; i < input.length - 2; i++){
    for(let j = i + 1; j < input.length - 1; j++){
        for(let k = j + 1; k < input.length; k++){
            let ok = true;
            let line1 = input[i].padStart(5, "0");
            let line2 = input[j].padStart(5, "0");
            let line3 = input[k].padStart(5, "0");
            for(let l = 0; l < 5; l++){
                if(Number(line1[l]) + Number(line2[l]) + Number(line3[l]) >= 10){
                    ok = false;
                    break;
                }
            }
            if(ok){
                max = max < Number(line1) + Number(line2) + Number(line3) ? Number(line1) + Number(line2) + Number(line3) : max;
            }
        }
    }
}
console.log(max);