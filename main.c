#include "math.h"
#include "stdio.h"

double cth(double x) {
    if (x < 0) {
        return -cth(-x);
    }

    double ans = 1;
    double prev = 1, cur = 1;
    double i = 1;

    do {
        prev = cur;
        cur = 2 * exp(-2 * i * x);
        if (fabs(cur - prev) < 0.001) {
            break;
        }
        ans += cur;
    } while (++i);

    return ans;
}



int main() {
    printf("my_cth=%f, math_cth=%f", cth(-1.1), 1.0/tanh(-1.1));
    return 0;
}
