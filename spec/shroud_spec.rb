require File.expand_path("../spec_helper", __FILE__)

module Danger
  describe Danger::DangerKover do
    it "should be a plugin" do
      expect(Danger::DangerKover.new(nil)).to be_a Danger::Plugin
    end

    #
    # TODO test your custom attributes and methods here
    #
  end
end