let input = require('fs').readFileSync('/dev/stdin').toString().trim().split('\n');
let [n, m, num] = input[0].split(' ').map(Number);

let graph = Array.from(Array(n + 1), () => Array());

for(let i = 1; i < input.length; i++){
    let [a, b] = input[i].split(' ').map(Number);
    graph[a].push(b);
    graph[b].push(a);
}

for(let i of graph) {
    i.sort((a, b) => {return a - b;});
}

let visitedD = Array(n + 1).fill(false);
let visitedB = Array(n + 1).fill(false);
visitedB[0] = true;
visitedD[0] = true;
let dans = [];
function DFS(graph, v, visited) {
    visited[v] = true;
    dans.push(v);

    graph[v].forEach(i => {
        if(!visitedD[i]){
            DFS(graph, i, visitedD);
        }
    })
}
let bans = [];
function BFS(graph, v, visited) {
    const queue = [v];
    visited[v] = true;
    while (queue.length) {
        let node = queue.shift();
        bans.push(node);

        graph[node].forEach(i => {
            if(!visited[i]){
                queue.push(i);
                visited[i] = true;
            }
        })
    }
}
DFS(graph, num, visitedD);
BFS(graph, num, visitedB);
console.log(...dans);
console.log(...bans);