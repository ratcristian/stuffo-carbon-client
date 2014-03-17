#!/usr/bin/env perl

use strict;
use warnings;

use Module::Build;

my $builder = Module::Build->new(
    module_name => 'Stuffo::Carbon::Client',

    dist_author => 'Cristian Rat',
    dist_abstract => 'Perl client for Stuffo-Carbon',

    requires => {
            'Moose' => undef,
            'Mojolicious' => undef,
    },
);

$builder->create_build_script();