require 'spec_helper'

describe 'rspec::fact2' do

  let(:facts) do
    { :os => { :family => 'RedHat' } }
  end

  it do
    should contain_notify('fact2').with({
        'message' => /RedHat/,
    })
  end
end
