let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');
let n = Number(input[0]);
let line = input[1].split(' ').map(Number);
let count = 0;
for(let i = 0; i < n - 2; i++){
    for(let j = i + 1; j < n - 1; j++){
        for(let k = j + 1; k < n; k++){
            if (line[i] <= line[j] && line[j] <= line[k]){
                count++;
            }
        }
    }
}

console.log(count);