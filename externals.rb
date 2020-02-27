=begin
MxxRu::arch_externals :doctest do |e|
  e.url 'https://github.com/onqtam/doctest/archive/2.3.6.tar.gz'

  e.map_file 'doctest/doctest.h' => 'src/doctest/*'
end
=end

MxxRu::arch_externals :procxx do |e|
  e.url 'https://github.com/eao197/procxx/archive/11bdbd779871fff68338f3eef9caecd690ec6f0e.tar.gz'
#  e.url 'https://github.com/eao197/procxx/archive/bcc825c5260caa91d1e265cbdf0e6997d1966540.tar.gz'

  e.map_file 'include/process.h' => 'procxx/*'
end

