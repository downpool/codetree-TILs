let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');
let line = input[1].split(' ').map(Number);
let max = Number.MIN_SAFE_INTEGER;

for(let i = 0; i < line.length - 2; i++){
    for(let j = i + 2; j < line.length; j++){
        max = max < (line[i] + line[j]) ? (line[i] + line[j]) : max;
    }
}

console.log(max);