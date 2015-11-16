use strict;
use warnings;
use inc::Module::Install;

name 'UNIVERSAL-to_yaml';
all_from 'lib/UNIVERSAL/to_yaml.pm';

requires Best => 0;

build_requires 'Test::More' => 0;

if (can_cc()) {
    requires('YAML::Syck' => 0.45);
}
else {
    requires('YAML' => 0.35) unless can_use('YAML::Syck' => 0.45);
}

auto_install;

WriteMakefile;

