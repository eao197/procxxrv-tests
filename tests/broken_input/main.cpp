#include <procxx/process.h>

#include "tests/utils.hpp"

#include <iostream>

int main(int /*argc*/, char ** argv)
{
	(void)signal(SIGPIPE, SIG_IGN);

	const std::string child_name = extract_pathname(argv[0]) + "/sum_first_10";

	for(int i = 0; i != 100; ++i)
	{
		try
		{
			procxx::process child{child_name};
			child.exec();

			std::cout << i << ": started" << std::endl;

			for(int j = 0; j != 20000; ++j)
			{
				child << std::to_string(j) + "\n";
			}
			child.input() << std::flush;

			std::string result;
			child >> result;
			std::cout << i << ": result: '" << result << "'" << std::endl;
		}
		catch(const std::exception & x)
		{
			std::cerr << "on iteration #" << i << ": " << x.what() << std::endl;
		}
	}

	return 0;
}

