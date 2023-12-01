let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');
let line = input[1].split('');
let count = 0;
for(let i = 0; i < line.length - 2; i++){
    for(let j = i + 1; j < line.length - 1; j++){
        for(let k = j + 1; k < line.length; k++){
            if(line[i] == 'C' && line[j] == 'O' && line[k] == 'W'){
                count++;
            }
        }
    }
}
console.log(count);