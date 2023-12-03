let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');
let temp = input[0].split(' ').map(Number);
let k = temp[1];
let maxSum = Number.MIN_SAFE_INTEGER;
let line = input[1].split(' ').map(Number);

for(let i = 0; i < line.length - k + 1; i++){
    let sum = 0;
    for(let j = 0; j < k; j++){
        sum += line[i + j];
    }
    maxSum = maxSum < sum ? sum : maxSum;
}

console.log(maxSum);