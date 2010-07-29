require 'dispatcher'

module Rollcall
  Dispatcher.to_prepare do
    ::Jurisdiction.class_eval do
      has_many :school_districts, :include => :schools
    end
  end
end
