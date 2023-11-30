let input = require('fs').readFileSync('/dev/stdin').toString().trim().split(' ').map(Number);

let multi = input[0] * input[1] * input[2];
let ans = 0;
for(let i of multi.toString()){
    ans += Number(i);
}
console.log(ans);