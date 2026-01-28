#include <stdio.h>

int main(void){
    int x, y;
    puts("Write: x:y");
    scanf("%d: %d", &x, &y);
    printf("x + y = %d\n", x + y);
    char temp;
    scanf("Press key: %c", &temp);
    return 0;
}
