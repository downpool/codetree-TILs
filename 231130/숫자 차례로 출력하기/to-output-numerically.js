let input = Number(require('fs').readFileSync('/dev/stdin').toString().trim());

let array = [];
let revarray = [];
function print(N){
    if(N == 0) {
        return;
    }else{
        print(N - 1);
        array.push(N);
        revarray.unshift(N);
    }
}

print(input);

console.log(array.join(' '));
console.log(revarray.join(' '));