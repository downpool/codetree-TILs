let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');

let line = input[1].split(' ').map(Number);

let min = Number.MAX_SAFE_INTEGER;

for(let i = 0; i < line.length; i++){
    let tempsum = 0;
    for(let j = 0; j < line.length; j++){
        tempsum += Math.abs(i - j) * line[j];
    }
    min = min < tempsum ? min : tempsum;
}
console.log(min);