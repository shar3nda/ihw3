#include "stdio.h"
#include "Cth.h"

int main() {
    double num;
    printf("Enter your number: ");
    scanf("%lf", &num);
    printf("Cth(%lf) = %lf\n", num, Cth(num));
    return 0;
}
