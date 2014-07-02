use Test::More;
use strict;
use warnings;

{
    package Foo;
    use strict;
    use warnings;
    use parent 'Amon2';
    sub load_config {+{}}
    __PACKAGE__->load_plugin('Redis');

}

{
    my $c = Foo->bootstrap();
    isa_ok $c, 'Foo';
    ok $c->redis;
}

{
    package Fuga;
    use strict;
    use warnings;
    use parent 'Amon2';
    sub load_config { +{ Redis => { server => '127.0.0.1:6379'}} }
    __PACKAGE__->load_plugin('Redis');
}

{
    my $c = Fuga->bootstrap();
    isa_ok $c, 'Fuga';
    ok $c->redis;
}



done_testing();
