MxxRu::arch_externals :doctest do |e|
  e.url 'https://github.com/onqtam/doctest/archive/2.3.6.tar.gz'

  e.map_file 'doctest/doctest.h' => 'doctest/*'
end

MxxRu::arch_externals :procxx do |e|
  e.url 'https://github.com/eao197/procxx/archive/f520e29d306f3a0de51c68913ffdbb7f1308bfff.tar.gz'
#  e.url 'https://github.com/eao197/procxx/archive/bcc825c5260caa91d1e265cbdf0e6997d1966540.tar.gz'

  e.map_file 'include/process.h' => 'procxx/*'
end

