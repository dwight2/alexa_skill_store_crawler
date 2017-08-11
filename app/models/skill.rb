class Skill < ApplicationRecord
  def initialize(name, dev, desc)
    @name = name
    @dev = dev
    @desc = desc
  end
  attr_reader :name
  attr_reader :dev
  attr_reader :desc
end
