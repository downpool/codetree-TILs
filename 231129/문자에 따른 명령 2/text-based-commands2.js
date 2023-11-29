let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('');

let dx = [1, 0, -1, 0];
let dy = [0, -1, 0, 1];

let arrow = 3;
let now = [0, 0];

for(let i of input){
    switch(i){
        case "L":
            arrow = (arrow + 3) % 4;
            break;
        
        case "R":
            arrow = (arrow + 1) % 4;
            break;

        case "F":
            now[0] += dx[arrow];
            now[1] += dy[arrow];
            break;
    }
}

console.log(...now);