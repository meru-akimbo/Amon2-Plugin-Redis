use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Amon2::Plugin::Redis',
    license             => 'artistic2',
    dist_author         => 'meru_akimbo <merukatoruayu0@gmail.com>',
    dist_version_from   => 'lib/Amon2/Plugin/Redis.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'Amon2-Plugin-Redis-*' ],
);

$builder->create_build_script();
