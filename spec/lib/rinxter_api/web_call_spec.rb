require 'spec_helper'

describe 'RinxterApi::WebCall' do
  before(:all) do
    @klass = RinxterApi::WebCall.new
  end

  describe '.make_web_call', :vcr do
    it 'parses a good query to valid response' do
      response = @klass.make_web_call(type: 'bout', boutId: 123)
      expect(response).to be_an Array
    end

    it 'gets a bad message for malformed queries' do
      expect { @klass.make_web_call(type: 'doesntexist') }.to raise_exception RuntimeError
    end
  end

  describe 'failed requests' do
    # TODO: unsure how to capture/test a bad request beyond responses.
    # it 'responds with the error message when timing out' do
    #   VCR.configure { |c| c.ignore_hosts 'www.rinxter.net' }
    #   stub_request(:any, /.*www.rinxter.net.*/).to_timeout
    #   expect { @klass.make_web_call(type: 'bout', boutId: 1) }.to raise_exception
    # end
  end
end
