let input = require('fs').readFileSync('/dev/stdin').toString().trim().split(' ').map(Number);


for(let i = 1; i <= input[0]; i++){
    for(let j = 1; j <= input[1]; j++){
        console.log(i, j);
    }
}