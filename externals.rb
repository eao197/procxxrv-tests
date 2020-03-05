MxxRu::arch_externals :doctest do |e|
  e.url 'https://github.com/onqtam/doctest/archive/2.3.6.tar.gz'

  e.map_file 'doctest/doctest.h' => 'doctest/*'
end

MxxRu::arch_externals :procxx do |e|
  e.url 'https://github.com/eao197/procyy/archive/22c4b7a577d6feb88994e77a4910687d1a318925.tar.gz'

  e.map_file 'include/process.h' => 'procyy/*'
end

