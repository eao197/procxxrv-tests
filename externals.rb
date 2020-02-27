MxxRu::arch_externals :doctest do |e|
  e.url 'https://github.com/onqtam/doctest/archive/2.3.6.tar.gz'

  e.map_file 'doctest/doctest.h' => 'doctest/*'
end

MxxRu::arch_externals :procxx do |e|
  e.url 'https://github.com/eao197/procxx/archive/ec67d0c0326e92c0f2e105d7b775ffcf85e1e512.tar.gz'
#  e.url 'https://github.com/eao197/procxx/archive/bcc825c5260caa91d1e265cbdf0e6997d1966540.tar.gz'

  e.map_file 'include/process.h' => 'procxx/*'
end

