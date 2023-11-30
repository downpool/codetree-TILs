let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('');

let isConvert = false;
for(let i = 0; i < input.length; i++){
    if (input[i] == 0) {
        input[i] = 1;
        isConvert = true;
        break;
    }
}
if (!isConvert){
    input[input.length - 1] = input[input.length - 1] == 0 ? 1 : 0;
}

console.log(Number.parseInt(input.join(''), 2));