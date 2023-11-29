let input = Number(require('fs').readFileSync('/dev/stdin').toString().trim());

function print(n) {
    if (n == 0) {
        return;
    }else{
        for(let i = 0; i < n; i++) {
            process.stdout.write("*" + " ");
        }
        process.stdout.write("\n");
        print(n - 1);
        for(let i = 0; i < n; i++){
            process.stdout.write("*" + " ");
        }
        process.stdout.write("\n");
    }
}

print(input);