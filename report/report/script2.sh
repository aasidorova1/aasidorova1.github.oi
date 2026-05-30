#include <stdio.h>
#include <stdlib.h>
 
int main() {
    int num;
    printf("Введите число: ");
    scanf("%d", &num);
    
    if (num > 0)
        exit(1);  // положительное
    else if (num < 0)
        exit(2);  // отрицательное
    else
        exit(0);  // ноль
}
