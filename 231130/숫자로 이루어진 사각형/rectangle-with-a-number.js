let input = require('fs').readFileSync('/dev/stdin').toString().trim();

// let dx = [1, 0, -1, 0];
// let dy = [0, -1, 0, 1];

// for(let i = 0; i < input * input; i++){
//     for(let j = 1; j < )
// }


function printNum(n) {
    let cnt = 1;
    for(let i = 0; i < n; i++){
        for(let j = 0; j < n; j++){
            process.stdout.write(cnt + " ");
            cnt++;
            if (cnt == 10){
                cnt = 1;
            }
        }
        process.stdout.write("\n");
    }
}

printNum(Number(input));