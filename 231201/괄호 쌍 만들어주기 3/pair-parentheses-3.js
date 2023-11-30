let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('');
let count = 0;
for(let i = 0; i < input.length; i++){
    if(input[i] == "("){
        for(let j = i + 1; j < input.length; j++){
            if(input[j] == ")"){
                count++;
            } 
        }
    }
}

console.log(count);