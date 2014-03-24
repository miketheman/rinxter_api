require 'spec_helper'

describe 'RinxterApi::Skater', :vcr do
  before(:all) do
    @skater = RinxterApi::Skater.new
  end

  describe '#get_by_id' do
    it 'retrieves Skater based on ID' do
      response = @skater.get_by_id(35)
      expect(response.name).to eq 'Suzy Hotrod'
    end
  end

  describe '#find_by_name' do
    it 'retrieves Skater based on name' do
      response = @skater.find_by_name(league_id: 1, name: 'Suzy')
      expect(response.name).to eq 'Suzy Hotrod'
      expect(response.id.to_i).to eq 35
    end
  end
end
