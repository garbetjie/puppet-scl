require 'spec_helper'
describe 'scl' do

  context 'with defaults for all parameters' do
    it { should contain_class('scl') }
  end
end
