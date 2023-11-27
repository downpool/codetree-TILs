let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');

let dx = [1, 0, -1, 0];
let dy = [0, -1, 0, 1];
let x = 0;
let y = 0;
for (let i = 1; i < input.length; i++) {
    let line = input[i].split(' ');
    let num = Number(line[1]);
    switch (line[0]) {
        case "N": 
            x = x + (dx[3] * num);
            y = y + (dy[3] * num);
            break;
        case "E":
            x = x + (dx[0] * num);
            y = y + (dy[0] * num);
            break;
        case "S":
            x = x + (dx[1] * num);
            y = y + (dy[1] * num);
            break;
        case "W":
            x = x + (dx[2] * num);
            y = y + (dy[2] * num);
            break;
    }
}
console.log(x, y);