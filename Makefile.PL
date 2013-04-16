use ExtUtils::MakeMaker;

use Config;

my %prereq;
if ($Config::Config{ivsize} < 8) {
    $prereq{'Math::Int64'} = '0.28';
}

WriteMakefile( NAME              => 'Fcntl::Packer',
               VERSION_FROM      => 'lib/Fcntl/Packer.pm',
               PREREQ_PM         => \%prereq,
               ABSTRACT_FROM     => 'lib/Fcntl/Packer.pm',
               AUTHOR            => 'Salvador Fandino <sfandino@yahoo.com>',
               LIBS              => [''],
               DEFINE            => '',
               INC               => '-I.',
               OBJECT            => '$(O_FILES)' );
