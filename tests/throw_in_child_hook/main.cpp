#include <procxx/process.h>

#include "tests/utils.hpp"

#define DOCTEST_CONFIG_IMPLEMENT
#include <doctest/doctest.h>

#include <iostream>

std::string child_name;

TEST_CASE("Exception in child-hook")
{
	procxx::process child{child_name};

	REQUIRE_THROWS_WITH(
		child.exec([](procxx::process::hook_place where) {
				if(procxx::process::hook_place::child == where)
				{
					throw std::runtime_error("Some unexpected error!");
				}
			})
		,
		"exception in child: Some unexpected error!"
	);

	REQUIRE(!child.waited());
	REQUIRE_NOTHROW(child.wait());

	REQUIRE(!child.running());
	REQUIRE(child.exited());
}

int main(int argc, char ** argv)
{
	(void)signal(SIGPIPE, SIG_IGN);

	child_name = extract_pathname(argv[0]) + "/sum_first_10";

	return doctest::Context{argc, argv}.run();
}

