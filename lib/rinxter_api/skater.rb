require 'ostruct'

module RinxterApi
  # Skater class
  # @author Mike Fiedler <miketheman@gmail.com>
  # @since 0.1.0
  # @see http://rinxter.net/wftda/ds?type=skater&skaterId=10
  class Skater < Base
    def get_by_id(id)
      response = make_web_call(type: 'skater', skaterId: id)
      # For some reason, the repsonse for a specific skaterId is an Array
      OpenStruct.new response.first
    end

    def find_by_name(league_id: league_id, name: name)
      # Array of Skaters from the League
      league_list = make_web_call(type: 'skaterList', leagueId: league_id)

      skater_id = find_id_by_name(league_list, name)

      get_by_id skater_id
    end
  end
end
