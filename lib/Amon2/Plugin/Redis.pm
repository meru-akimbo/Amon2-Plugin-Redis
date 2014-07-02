package Amon2::Plugin::Redis;

use warnings;
use strict;
use Redis;

use version; my $VERSION = qv('0.0.3');

sub init {
    my ($class, $context) = @_;
    no strict 'refs';
    *{"$context\::redis"} = \&_redis;
}

sub _redis {
    my ($self,) = @_;

    if (!exists $self->{redis}) {
        $self->{redis} = Redis->new(%{ $self->config->{Redis} || +{} });
    }
    $self->{redis};
}


1;
__END__

=head1 NAME

Amon2::Plugin::Redis - [One line description of module's purpose here]

=head1 SYNOPSIS

    # MyApp.pm
    __PACKAGE__->load_plugin('Redis');

    $c->redis->set(test => 'hoge');

=head1 LICENSE

Copyright (C) meru_akimbo

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
