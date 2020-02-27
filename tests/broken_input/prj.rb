require 'rubygems'

gem 'Mxx_ru', '>= 1.3.0'

require 'mxx_ru/cpp'

MxxRu::Cpp::exe_target {

  target '_test.broken_input'
  cpp_source 'main.cpp'

}

