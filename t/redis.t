use Test::More;
use strict;
use warnings;

{
    package Foo;
    use strict;
    use warnings;
    use parent 'Amon2';
    sub load_config { +{} }
    __PACKAGE__->load_plugin('Redis');
}

my $c = Foo->bootstrap();
isa_ok $c, 'Foo';
ok $c->redis;

done_testing();
