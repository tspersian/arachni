=begin
    Copyright 2010-2016 Tasos Laskos <tasos.laskos@arachni-scanner.com>

    This file is part of the Arachni Framework project and is subject to
    redistribution and commercial restrictions. Please see the Arachni Framework
    web site for more information on licensing and terms of use.
=end

# Extracts paths from `data-url` attributes.
#
# @author Tasos "Zapotek" Laskos <tasos.laskos@arachni-scanner.com>
# @version 0.2.1
class Arachni::Parser::Extractors::DataURL < Arachni::Parser::Extractors::Base

    def run
        return [] if !includes?( 'data-url' )

        document.search( '//*[@data-url]' ).map { |e| e['data-url'] }
    end

end
