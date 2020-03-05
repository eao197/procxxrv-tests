#include <procyy/process.h>

#include "tests/utils.hpp"

#define DOCTEST_CONFIG_IMPLEMENT
#include <doctest/doctest.h>

#include <iostream>

std::string child_name;

TEST_CASE("Exception in parent hook")
{
	procyy::process child{child_name};

	REQUIRE_NOTHROW(
		child.exec([](procyy::process::hook_place where) {
				if(procyy::process::hook_place::parent == where)
				{
					throw std::runtime_error("Some unexpected error!");
				}
			})
	);

	REQUIRE(!child.waited());

	REQUIRE_NOTHROW(child.close(procyy::pipe_t::read_end()));

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

