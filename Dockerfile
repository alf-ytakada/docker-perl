FROM perl:5.24.1
RUN apt-get update; \
	apt-get install -y libgd-dev

RUN cpanm GD  AnyEvent Cache::FastMmap Cache::Memcached::Fast \
			Class::Accessor::Fast Class::Accessor::Lite \
			Config::INI::Reader  Crypt::PBKDF2 \
			DBI DBD::mysql DBIx::Sunny \
			Email::Abstract Email::Address Email::MIME Email::Sender \
			Encode Furl HTML::FillInForm::Lite HTTP::Router::Declare \
			Hash::Merge JSON JSON::XS LWP::UserAgent  Linux::Inotify2 \
			List::MoreUtils::XS Log::Handler Mail::Address Math::Random::MT \
			Path::Class Plack SQL::Abstract Socket String::Random \
			Text::Xslate Time::HiRes Time::Moment Time::Piece::MySQL \
			XML::LibXML YAML::Syck

RUN cpanm Starman Starlet Gazelle
RUN cpanm Digest::SHA1 Digest::SHA UNIVERSAL::require Plack::Session \
			IO::Dirent DateTime

RUN cpanm DateTime::Format::MySQL XML::TreePP
RUN cpanm IO::Socket::SSL
#RUN cpanm DateTime

RUN cpanm Router::Simple Plack::Middleware::Session Plack::Builder::Conditionals Carp \
		Crypt::SaltedHash Email::MIME::Creator Email::Sender::Simple FormValidator::Lite \
		HTML::Entities HTTP::Request::Common IO::All MIME::Base64 Net::OAuth::Client \
		Net::Twitter::Lite::WithAPIv1_1 Text::CSV_XS 

RUN cpanm -n Net::Stomp URL::Encode Archive::Zip File::chdir Plack::Middleware::ReverseProxy
RUN cpanm Data::ICal DateTime

CMD ["perl5.24.1", "-de0"]
