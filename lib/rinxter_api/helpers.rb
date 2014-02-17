module RinxterApi
  # Helper methods that are used in more than one module.
  # @author Mike Fiedler <miketheman@gmail.com>
  # @since 0.1.0
  module Helpers
    # Helper method to return an ID from a name
    #
    # Many of the calls to the data source require an ID. This is a convinence
    # method to perform the ID lookup based on an input list.
    #
    # @param list [Array] a list of hashes
    # @param name [String] the name to match on
    # @return [Fixnum] id of matched entry
    def find_id_by_name(list, name)
      # iterate over list and find the name we want
      matches = list.select { |i| i['name'].match name }

      case matches.count
      when 0
        fail "Nothing matched for '#{name}'. Check your spelling."
      when 1
        # get the id we want, coerce into an int no matter what.
        matches.first['id'].to_i
      else
        fail "Found #{matches.count} results for '#{name}', instead of 1."
      end
    end
  end
end
