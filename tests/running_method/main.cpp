#include <procxx/process.h>

#include "tests/utils.hpp"

#define DOCTEST_CONFIG_IMPLEMENT
#include <doctest/doctest.h>

#include <iostream>
#include <thread>

std::string child_name;

TEST_CASE("running method")
{
	procxx::process child{child_name};

	REQUIRE_NOTHROW(child.exec());
	std::this_thread::sleep_for(std::chrono::milliseconds(750));
	REQUIRE(!child.running());
	REQUIRE(child.waited());
}

int main(int argc, char ** argv)
{
	(void)signal(SIGPIPE, SIG_IGN);

	child_name = extract_pathname(argv[0]) + "/just_exit";

	return doctest::Context{argc, argv}.run();
}

