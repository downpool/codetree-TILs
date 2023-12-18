let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');


function mDistance(checkpoint, jump){
    let distance = 0;
    checkpoint.splice(jump, 1);

    for(let i = 0; i < checkpoint.length - 1; i++){
        let [x1, y1] = checkpoint[i];
        let [x2, y2] = checkpoint[i + 1];
        distance += Math.abs(x2 - x1);
        distance += Math.abs(y2 - y1);
    }
    return distance;
}
let array = Array.from(Array(Number(input[0])), () => Array(2));
for(let i = 1; i < input.length; i++){
    let [x, y] = input[i].split(' ').map(Number);
    array[i - 1][0] = x;
    array[i - 1][1] = y;
}
let min = Number.MAX_SAFE_INTEGER;
for(let i = 1; i < array.length - 1; i++){
    let temp = mDistance(array, i);
    min = min > temp ? temp : min;
}

console.log(min);