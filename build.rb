#!/usr/bin/ruby
require 'mxx_ru/cpp'

MxxRu::Cpp::composite_target( MxxRu::BUILD_ROOT ) {

	toolset.force_cpp11
	global_include_path '.'

	global_linker_option "-Wl,-rpath='$ORIGIN'"

	# If there is local options file then use it.
	if FileTest.exist?( "local-build.rb" )
		required_prj "local-build.rb"
	else
		default_runtime_mode( MxxRu::Cpp::RUNTIME_RELEASE )
		MxxRu::enable_show_brief

		global_obj_placement MxxRu::Cpp::PrjAwareRuntimeSubdirObjPlacement.new(
			'target', MxxRu::Cpp::PrjAwareRuntimeSubdirObjPlacement::USE_COMPILER_ID )
	end

	required_prj 'apps/just_exit/prj.rb'
	required_prj 'apps/sum_first_10/prj.rb'
	required_prj 'tests/build_tests.rb'
}

