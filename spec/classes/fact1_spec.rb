require 'spec_helper'

describe 'rspec::fact1' do

  let(:facts) do
    { :osfamily => 'RedHat' }
  end

  it do
    should contain_notify('fact1').with({
      'message' => /RedHat/,
    })
  end
end
