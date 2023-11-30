let input = Number(require('fs').readFileSync('/dev/stdin').toString().trim());

function gold (n) {
    if (n == 1) {
        return 0;
    }else{
        if(n % 2 == 0){
            return gold(n / 2) + 1;
        }else{
            return gold(n * 3 + 1) + 1;
        }
    }
}
console.log(gold(input));