let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');
let nandm = input[0].split(' ').map(Number);
let graph = Array.from(Array(nandm[0] + 1), () => Array());

for(let i = 1; i < input.length; i++) {
    let line = input[i].split(' ').map(Number);
    graph[line[0]].push(line[1]);
    graph[line[1]].push(line[0]);
}

let visited = Array(nandm[1]).fill(false);
visited[0] = true;
let count = 0;

function DFS(v, visited) {
    visited[v] = true;
    graph[v].forEach(i => {
        if(!visited[i]){
            count++;
            DFS(i, visited);
        }
    })
}

DFS(1, visited, count);

console.log(count);