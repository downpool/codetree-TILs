let input = Number(require('fs').readFileSync('/dev/stdin').toString().trim());

function divide(n) {
    if (n == 1) {
        return 0;
    }
    if (n % 2 == 0){
        return divide(n / 2) + 1;
    }else {
        return divide(parseInt(n / 3)) + 1;
    }
}

console.log(divide(input));