#include <procxx/process.h>

#include "tests/utils.hpp"

#define DOCTEST_CONFIG_IMPLEMENT
#include <doctest/doctest.h>

#include <iostream>

std::string child_name;

TEST_CASE("Broken input")
{
	procxx::process child{child_name};

	REQUIRE_NOTHROW(child.exec());
	REQUIRE(child.running());

	REQUIRE_NOTHROW([&]{
			for(int j = 0; j != 20000; ++j)
			{
				child << std::to_string(j) + "\n";
			}
			child.input() << std::flush;
		}()
	);

	std::string result;
	REQUIRE_NOTHROW([&]{
			child >> result;
		}()
	);

	REQUIRE_EQ("45", result);
}

int main(int argc, char ** argv)
{
	(void)signal(SIGPIPE, SIG_IGN);

	child_name = extract_pathname(argv[0]) + "/sum_first_10";

	return doctest::Context{argc, argv}.run();
}

