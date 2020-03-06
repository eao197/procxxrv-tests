MxxRu::arch_externals :doctest do |e|
  e.url 'https://github.com/onqtam/doctest/archive/2.3.6.tar.gz'

  e.map_file 'doctest/doctest.h' => 'doctest/*'
end

MxxRu::arch_externals :procxx do |e|
  e.url 'https://github.com/eao197/procyy/archive/15c531dc0c7ce5e81c84a1535efe61a2fe89cf8a.tar.gz'

  e.map_file 'include/process.h' => 'procyy/*'
end

