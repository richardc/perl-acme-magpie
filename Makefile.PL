use ExtUtils::MakeMaker;

my $module = 'Magpie.pm';
WriteMakefile(NAME         => 'Acme::Magpie',
              VERSION_FROM => $module,
              PM           => {
                               'Magpie.pm', => '$(INST_LIBDIR)/Magpie.pm',
                               'l33t.pm',   => '$(INST_LIBDIR)/Magpie/l33t.pm',
                              },
              PREREQ_PM => { 'Test::More'     => 0,
	                     'Devel::Symdump' => 0 });


sub MY::postamble {
    return <<EOF
README: $module
\tpod2text $module > README
EOF
}
