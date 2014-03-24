require 'httparty'

module RinxterApi
  # A generalized WebCall class to be used any time you wish to perform
  # an API call.
  # @author Mike Fiedler <miketheman@gmail.com>
  # @since 0.1.0
  class WebCall
    include HTTParty

    # Association code in repository. Acceptable values are: 'wftda', 'mrda'
    # @todo make this configurable
    ASSOC = 'wftda'

    base_uri "http://www.rinxter.net/#{ASSOC}"
    default_params output: 'obj'
    format :json

    # Sets the default headers to application/json for send and return
    headers 'Content-Type' => 'application/json'

    # Enable HTTParty debugging by setting `DEBUG=true` in environment
    debug_output $stderr if ENV['DEBUG'] == true

    # Perform the HTTP `get` call and parse the response
    # Catch any non-200 response codes and raise the issue to the end-user
    #
    # @param query [Hash] HTTP query string parameters, as: `key: 'value'`
    # @return [Hash,Array] a parsed response of the message's body
    # @todo when does the failure condition happen? If never, remove.
    # @todo too many considitons on failure, simplify if possible.
    def make_web_call(query)
      # Default Data source
      request_path = '/ds'

      response = self.class.get request_path, query: query

      if response.success?
        # Most responses to the correct path return a 200, so inpsect the
        # response class to see if the query itself fails.

        # TODO: Do any valid responses come in as Strings? Simplify these conditions.
        fail response.body if (response.body.class == String) && (response.body.start_with? 'Error')
        fail response.body if response.body.start_with? 'Invalid Command'

        # return the parsed response instead of the response.body, save
        # us the trouble of re-parsing it.
        response.parsed_response
      # else
      #   # catch any other issues with the web call.
      #   fail response.response
      end
    end
  end
end
