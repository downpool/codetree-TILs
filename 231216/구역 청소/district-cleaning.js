let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');
let x12 = input[0].split(' ').map(Number);
let x34 = input[1].split(' ').map(Number);

let min = x12[0] < x34[0] ? x12[0] : x34[0];
let max = x12[1] > x34[1] ? x12[1] : x34[1];

console.log(max - min);