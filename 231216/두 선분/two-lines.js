let input = require('fs').readFileSync('/dev/stdin').toString().trim().split(' ').map(Number);

if(input[0] > input[3] || input[1] < input[2]){
    console.log("nonintersecting");
}else{
    console.log("intersecting");
}