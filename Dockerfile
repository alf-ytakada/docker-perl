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
