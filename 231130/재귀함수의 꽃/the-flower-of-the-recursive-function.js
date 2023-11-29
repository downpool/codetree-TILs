let input = Number(require('fs').readFileSync('/dev/stdin').toString().trim());

function print(n) {
    if (n == 0){
        return;
    }else{
        process.stdout.write(n + " ");
        print(n - 1);
        process.stdout.write(n + " ");
    }
}

print(input);