let input = require('fs').readFileSync('/dev/stdin').toString().trim().split(' ').map(Number);

// let dx = [1, 0, -1, 0];
// let dy = [0, -1, 0, 1];

function gcd(a, b) {
    if (b == 0){
        return a;
    }else{
        return gcd(b, a % b);
    }
}

console.log(gcd(input[0], input[1]));