let input = Number(require('fs').readFileSync('/dev/stdin').toString().trim());

let num = input.toString(2);

console.log(num);