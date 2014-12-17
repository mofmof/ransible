require "ransible/version"

module Ransible
  class Executer
  	def initialize(yml_path, inventory_path)
      @yml_path = yml_path
      @inventory_path = inventory_path
  	end

  	def run
      log = `ansible-playbook -i #{@inventory_path} #{@yml_path}`
      p "executed ansible"
      { log: log }
  	end
  end
end