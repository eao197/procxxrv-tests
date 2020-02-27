#include <procxx/process.h>

#include "tests/utils.hpp"

#define DOCTEST_CONFIG_IMPLEMENT
#include <doctest/doctest.h>

#include <iostream>

std::string child_name;

TEST_CASE("Wrong name")
{
	bool error_detected = false;
	procxx::process child{child_name};
	try
	{
		child.exec();
	}
	catch(const procxx::process::exception & x)
	{
		error_detected = nullptr != std::strstr(x.what(), "execvp failure: ");
	}

	REQUIRE(error_detected);
}

int main(int argc, char ** argv)
{
	(void)signal(SIGPIPE, SIG_IGN);

	child_name = extract_pathname(argv[0]) + "/no-such-executable";

	return doctest::Context{argc, argv}.run();
}

