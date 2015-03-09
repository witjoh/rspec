require 'spec_helper'

describe 'rspec::demo' do

  let(:facts) do
    { :osfamily => 'RedHat',
      :os => { 'family' => 'RedHat', 'release' => { 'full' => '10.0' } } 
    }
  end

  it do
    should contain_notify('normal fact').with({
      'message' => /RedHat/,
    })
  end

  it do
    should contain_notify('array fact').with({
      'message' => /RedHat/,
    })
  end

  it do
    should contain_notify('nested fact').with({
      'message' => /10.0/,
    })
  end
end
