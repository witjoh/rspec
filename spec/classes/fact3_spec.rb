require 'spec_helper'

describe 'rspec::fact3' do

  let(:facts) do
    { :os => { 'release' => { 'full' => '10.0' } } }
  end

  it do
    should contain_notify('fact3').with({
      'message' => /10.0/,
    })
  end
end
