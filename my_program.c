#include <stdio.h>

int main(void){
    int x, y;
    puts("Write: x:y");
    scanf("%d: %d", &x, &y);
    printf("x + y = %d\n", x + y);
    getchar();
    return 0;
}
