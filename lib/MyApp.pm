package MyApp;

use Dancer2;
use Dancer2::Plugin::FlashNote;
use Dancer2::Plugin::Database;
use Dancer2::Plugin::DBIC;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/logout' => sub {
    flash 'Bye bye!';

    redirect '/';
}; 

get '/pages/:page[Int]' => sub {
    my $page = route_parameters->get('page');

    template 'page', {
        page => $page,
    };
};

get '/db' => sub {
    'Соединение с базой установлено' if database->ping;
};

get '/users' => sub {
	my @users = map { { $_->get_columns } } schema->resultset('User')->all;

	template 'users', {
        users => \@users,
    };
};

true;
