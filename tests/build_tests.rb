require 'rubygems'

gem 'Mxx_ru', '>= 1.3.0'

require 'mxx_ru/cpp'

MxxRu::Cpp::composite_target {
	required_prj 'tests/wrong_name/prj.ut.rb'
	required_prj 'tests/broken_input/prj.ut.rb'
	required_prj 'tests/throw_in_child_hook/prj.ut.rb'
	required_prj 'tests/throw_in_parent_hook/prj.ut.rb'
	required_prj 'tests/running_method/prj.ut.rb'
}

