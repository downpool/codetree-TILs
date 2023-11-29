let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');

let dx = [1, 0, -1, 0];
let dy = [0, -1, 0, 1];

let array = Array.from(Array(input.length - 1), () => Array(input.length - 1));

for(let i = 1; i < input.length; i++){
    let line = input[i].split(' ').map(Number);
    array[i - 1] = line
}
let count = 0;
for(let i = 0; i < array.length; i++){
    for (let j = 0; j < array[i].length; j++){
        let temp = 0;
        for(let k = 0; k < 4; k++){
            if((i + dx[k]) < 0 || (j + dy[k]) < 0 || (i + dx[k]) >= array.length || (j + dy[k]) >= array.length){
                continue;
            }
            if(array[i + dx[k]][j + dy[k]] == 1){
                temp++;
            }
        }
        if(temp >= 3){
            count++;
        }
    }
}
console.log(count);