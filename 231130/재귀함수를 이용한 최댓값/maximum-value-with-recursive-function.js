let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');

let line = input[1].split(' ').map(Number);

console.log(Math.max(...line));