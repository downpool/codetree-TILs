let input = Number(require('fs').readFileSync('/dev/stdin').toString().trim());

function star(n, input) {
    if (n > input){
        return;
    }else{
        for(let i = 0; i < n; i++){
            process.stdout.write("*");
        }
        process.stdout.write("\n");
        star(n + 1, input);
    }
}

star(1, input);