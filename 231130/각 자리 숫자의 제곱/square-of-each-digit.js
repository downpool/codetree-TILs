let input = Number(require('fs').readFileSync('/dev/stdin').toString().trim());

function sum (n) {
    if (n < 10) {
        return n * n;
    }else{
        return sum(parseInt(n / 10)) + (n % 10) ** 2;
    }
}

console.log(sum(input));