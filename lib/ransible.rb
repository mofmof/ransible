require "ransible/version"

module Ransible
  # HACK 別ファイルに切り出す
  class Runner
  	def initialize(yml_path, inventory_path)
      @yml_path = yml_path
      @inventory_path = inventory_path
  	end

  	def run
      log = run_ansible
      p "executed ansible"
      # HACK result = Result.new(log: log)のようにしたい
      result = Result.new
      result.log = log
      result
  	end

    private
      def run_ansible
        `ansible-playbook -i #{@inventory_path} #{@yml_path}`
      end
  end

  # HACK 別ファイルに切り出す
  class Result
    attr_accessor :log
  end
end