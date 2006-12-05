use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Catalyst::Plugin::DateTime::Constructor',
    AUTHOR              => 'travail <travail@cabane.no-ip.org>',
    VERSION_FROM        => 'lib/Catalyst/Plugin/DateTime/Constructor.pm',
    ABSTRACT_FROM       => 'lib/Catalyst/Plugin/DateTime/Constructor.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Catalyst-Plugin-DateTime-Constructor-*' },
);
