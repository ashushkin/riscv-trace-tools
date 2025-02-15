/*
* This test checks the track if we have a cycle that is almost always true
*/

#ifndef ITER_NUM
#define ITER_NUM 1000
#endif

int main()
{
    int a = 1;
    int b = ITER_NUM;
    int c = 0;

    while (a < b) {
        a = (a + c + 1) % c;
        c++;
    }

    return 0;
}