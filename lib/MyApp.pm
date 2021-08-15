package MyApp;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {
    return "Let's dance!";
};

get '/pages/:page[Int]' => sub {
    my $page = route_parameters->get('page');

    template 'page.tt', {
        page => $page,
    };
};

true;
