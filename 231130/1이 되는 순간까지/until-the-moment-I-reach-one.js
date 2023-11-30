let input = Number(require('fs').readFileSync('/dev/stdin').toString().trim());

let count = 0;
function divide(n) {
    if (n == 1) {
        return 1;
    }
    count++;
    if (n % 2 == 0){
        divide(n /= 2);
    }else {
        divide(Math.round(n / 3));
    }
}

divide(input);
console.log(count);