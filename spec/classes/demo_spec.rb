require 'spec_helper'

describe 'rspec::demo' do

  context "normal fact" do
    let(:facts) do
      { :osfamily => 'RedHat' }
    end

    it do
      should contain_notify('normal fact').with({
        'message' => /RedHat/,
      })
    end
  end

  context "Array fact" do
    let(:facts) do
      { :os => { :family => 'RedHat' } }
    end

    it do
      should contain_notify('array fact').with({
        'message' => /RedHat/,
      })
    end
  end

  context 'Nested fact' do
    let(:facts) do
      { :os => { 'release' => { 'full' => '10.0' } } }
    end

    it do
    should contain_notify('nested fact').with({
        'message' => /10.0/,
      })
    end
  end
end
