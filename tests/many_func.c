#define SIZE (1 << 16)

int VAR = SIZE;

void func1()
{
	VAR += 1;
}

void func2()
{
	VAR += 2;
}

void func3()
{
	VAR += 3;
}

int main()
{
	for ( int i = 0; i < SIZE; i++) {
		if (i % 10 == 0) {
			func3();
		} else if (i % 17 == 0) {
			func2();
		}
		func1();
	}
}