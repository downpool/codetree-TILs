let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');

let line = input[1].split(' ').map(Number);
let temp = 1;
function gcd(a, b) {
    if (b == 0){
        return a;
    }else{
        return gcd(b, a % b);
    }
}

function lcm(a, b) {
    return a * b / gcd(a, b);
}

for(let i of line){
    temp = lcm(temp, i);
}

console.log(temp);