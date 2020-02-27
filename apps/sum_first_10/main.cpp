#include <iostream>

int main()
{
	int sum = 0;
	for(int i = 0; i < 10 && std::cin; ++i)
	{
		int n;
		if( (std::cin >> n) )
			sum += n;
		else
			break;
	}

	std::cout << sum << std::endl;

	return 0;
}

