#define SIZE (1 << 16)

int big_array[SIZE] = {0};

void func3()
{
    big_array[3] += 3;
}

void func2()
{
    big_array[2] += 2;
    func3();
}

void func1()
{
    for (int i = 0; i < SIZE; i++) {
        big_array[i] = (big_array[i] ^ i);
    }

    func2();
}

int main()
{
    func1();
    func2();
    func3();

    func1();
    func2();
    func3();

    func1();
    func2();
    func3();

    func2();
    func3();

    func3();

    return 0;
}

