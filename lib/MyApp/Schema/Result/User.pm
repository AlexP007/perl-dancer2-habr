package MyApp::Schema::Result::User;

use warnings;
use strict;
use parent qw/DBIx::Class::Core/;

__PACKAGE__->table('user');

__PACKAGE__->add_columns(
    id => {
        data_type => 'integer',
        is_auto_increment => 1
    },
    login => {
        data_type => 'text',
    },
    email => {
        data_type => 'text',
    },
);

__PACKAGE__->set_primary_key('id');

__PACKAGE__->add_unique_constraint([qw/login/]);

__PACKAGE__->add_unique_constraint([qw/email/]);

1;
