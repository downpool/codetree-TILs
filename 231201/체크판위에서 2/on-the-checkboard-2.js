let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');
let RandC = input[0].split(' ').map(Number);
let n = RandC[0];
let m = RandC[1];
let array = Array.from(Array(RandC[0]), () => Array(RandC[1]));
for(let i = 1; i < input.length; i++){
    array[i - 1] = input[i].split(' ');
}

let cnt = 0;
for(let i = 1; i < n; i++)
    for(let j = 1; j < m; j++)
        for(let k = i + 1; k < n - 1; k++)
            for(let l = j + 1; l < m - 1; l++)
                // 그 중 색깔이 전부 달라지는 경우에만 개수를 세줍니다.
                if(array[0][0] != array[i][j] && 
                   array[i][j] != array[k][l] &&
                   array[k][l] != array[n - 1][m - 1])
                    cnt++;
                        
console.log(cnt);