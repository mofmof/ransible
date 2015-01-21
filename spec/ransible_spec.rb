require 'spec_helper'

describe Ransible::Runner do
  describe "#run" do
    it do
      runner = Ransible::Runner.new(nil, nil)
      runner.stub(:run_ansible).and_return("ansible log")
      result = runner.run
      expect(result.log).to eq "ansible log"
    end
  end
end