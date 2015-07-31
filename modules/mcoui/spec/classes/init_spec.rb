require 'spec_helper'
describe 'mcoui' do

  context 'with defaults for all parameters' do
    it { should contain_class('mcoui') }
  end
end
