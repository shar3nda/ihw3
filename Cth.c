#include "math.h"

double Cth(double x) {
    if (x < 0) {
        return -Cth(-x);
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
