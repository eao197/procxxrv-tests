MxxRu::arch_externals :doctest do |e|
  e.url 'https://github.com/onqtam/doctest/archive/2.3.6.tar.gz'

  e.map_file 'doctest/doctest.h' => 'doctest/*'
end

MxxRu::arch_externals :procxx do |e|
  e.url 'https://github.com/eao197/procyy/archive/c2660285ec4acd805720b081e2b7b25fd8dc86f0.tar.gz'

  e.map_file 'include/process.h' => 'procyy/*'
end

