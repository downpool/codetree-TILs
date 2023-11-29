let n = Number(require('fs').readFileSync('/dev/stdin').toString().trim());

function print(a) {
    if (a == 0) {
        return;
    }else{
        console.log("HelloWorld");
        print(a - 1);
    }
}
print(n);