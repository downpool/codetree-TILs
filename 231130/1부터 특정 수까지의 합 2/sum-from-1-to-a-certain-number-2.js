let input = Number(require('fs').readFileSync('/dev/stdin').toString().trim());

function sums(n){
    if (n == 0){
        return 0;
    }else{
        return sums(n - 1) + n;
    }
}


console.log(sums(input));