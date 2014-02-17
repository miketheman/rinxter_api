require 'spec_helper'

describe 'RinxterApi::Helpers' do
  include RinxterApi::Helpers
  before(:all) do
    # create a mock object format we would expect to receive from the API
    @input = [
      { 'id' => 1, 'name' => 'James T. Kirk' },
      { 'id' => 2, 'name' => 'Jean-Luc Picard' },
      { 'id' => 3, 'name' => 'Benajmin Sisko' }
    ]
  end

  describe '#find_id_by_name' do
    it 'retrieves ID based on name name' do
      response = find_id_by_name(@input, 'Picard')
      expect(response).to eq 2
    end

    it 'fails when name name not found' do
      expect { find_id_by_name(@input, 'Janeway') }.to raise_error
    end

    it 'fails when too many results are returned' do
      expect { find_id_by_name(@input, 'J') }.to raise_error
    end
  end
end
