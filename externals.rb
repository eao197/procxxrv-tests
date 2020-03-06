MxxRu::arch_externals :doctest do |e|
  e.url 'https://github.com/onqtam/doctest/archive/2.3.6.tar.gz'

  e.map_file 'doctest/doctest.h' => 'doctest/*'
end

MxxRu::arch_externals :procxx do |e|
  e.url 'https://github.com/eao197/procyy/archive/e4f571b9f4d91a0e2737b6633cae4153d5bb7913.tar.gz'

  e.map_file 'include/process.h' => 'procyy/*'
end

