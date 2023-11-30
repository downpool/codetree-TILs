let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');
let RandC = input[0].split(' ').map(Number);

let array = Array.from(Array(RandC[0]), () => Array(RandC[1]));
for(let i = 1; i < input.length; i++){
    array[i - 1] = input[i].split(' ');
}
let start = array[0][0];

let max = Number.MIN_SAFE_INTEGER;
for(let i = 1; i < RandC[0] - 1; i++){
    for(let j = 1; j < RandC[1] - 1; j++){
        if(array[i][j] != start){
            max = Math.max(max, (Math.max(1, (i - 2) * (j - 2))) * ((RandC[0] - i - 2) * (RandC[1] - j - 2)));
        }
    }
}
if (start == array[RandC[0] - 1][RandC[1] - 1]){
    console.log(0);
}else{
    console.log(max);
}