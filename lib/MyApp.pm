package MyApp;

use Dancer2;
use Dancer2::Plugin::FlashNote;

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

true;
