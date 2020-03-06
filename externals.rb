MxxRu::arch_externals :doctest do |e|
  e.url 'https://github.com/onqtam/doctest/archive/2.3.6.tar.gz'

  e.map_file 'doctest/doctest.h' => 'doctest/*'
end

MxxRu::arch_externals :procxx do |e|
  e.url 'https://github.com/eao197/procyy/archive/71ebc68ad798745059b3c4022a97327a26c5c2ae.tar.gz'

  e.map_file 'include/process.h' => 'procyy/*'
end

