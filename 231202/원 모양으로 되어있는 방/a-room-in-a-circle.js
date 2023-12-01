let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n').map(Number);
let array = input.slice(1);
let min = Number.MAX_SAFE_INTEGER;
for(let i = 1; i < input.length; i++){
    let sum = 0;
    for(let j = 0; j < array.length; j++){
        sum += j * array[j];
    }
    min = min > sum ? sum : min;
    let temp = array.shift();
    array.push(temp);
}

console.log(min);