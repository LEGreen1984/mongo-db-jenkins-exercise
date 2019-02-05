#
# Cookbook:: mongo
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'mongo::default' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it "should install mongodb" do
      expect(chef_run).to install_package("mongodb")
  end

  it "should enable mongodb as a service" do
    expect(chef_run).to enable_service("mongodb")
  end
  it "should be running" do
    expect(chef_run).to start_service("mongodb")
  end
  it "should install apt from a recipe" do
      expect(chef_run).to include_recipe("apt")
    end
    # it "should update apt" do
    #     expect(chef_run).to update("apt")
    #   end
  end
