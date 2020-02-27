#pragma once

#include <string>

inline std::string
extract_pathname(const std::string & from)
{
	const auto pos = from.find_last_of('/');
	if(std::string::npos != pos)
		return from.substr(0, pos);
	else
		return {};
}

