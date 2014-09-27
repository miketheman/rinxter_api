describe 'RinxterApi::Client', :vcr do
  before(:all) do
    @client = RinxterApi::Client.new
  end

  it 'is a Client class' do
    expect(@client).to be_an_instance_of RinxterApi::Client
  end

  describe '#make_web_call' do
    it 'can perform a web call' do
      response = @client.make_web_call(type: 'leagueList')

      expect(response).to be_an Array
    end
  end
end
