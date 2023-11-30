let input = Number(require('fs').readFileSync('/dev/stdin').toString().trim());

function fact(n) {
    if (n <= 1) {
        return 1;
    }else{
        return n * fact(n - 1);
    }
}

console.log(fact(input));