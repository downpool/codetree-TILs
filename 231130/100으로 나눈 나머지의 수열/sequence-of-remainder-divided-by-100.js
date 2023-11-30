let input = Number(require('fs').readFileSync('/dev/stdin').toString().trim());

function left(n){
    if (n == 1){
        return 2;
    }else if(n == 2){
        return 4;
    }else{
        return (left(n - 1) * left(n - 2)) % 100;
    }
}

console.log(left(input));