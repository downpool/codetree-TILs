let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');
let n = Number(input[0]);
let array = Array.from(Array(n), () => Array(n));

for(let i = 0; i < n; i++){
    array[i] = input[i + 1].split(' ').map(Number);
}
let max = 0;
for(let i = 0; i < n; i++){
    for(let j = 0; j < n - 2; j++){
        max = Math.max(max, array[i][j] + array[i][j + 1] + array[i][j + 2]);
    }
}
console.log(max);