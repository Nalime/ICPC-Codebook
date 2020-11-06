rm a.out
file=${1%.*}
g++ $file.cpp -std=c++17 -O2 -Wall -Wextra -Wshadow -fsanitize=undefined

for i in $file*.in; do
    echo $i:
    cat $i
    echo Output:
    ./a.out < $i
    echo ---
done
