let input = Number(require('fs').readFileSync('/dev/stdin').toString().trim());

function array(n){
    if(n == 1){
        return 1;
    }else if(n == 2){
        return 2;
    }else{
        return array(parseInt(n / 3)) + array(n - 1);
    }
}

console.log(array(input));