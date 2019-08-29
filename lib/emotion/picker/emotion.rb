module Emotion
  module Picker
    # DAO class for representing an emotion
    class Emotion
      attr_reader :name, :description

      # Emotion constructor
      # @param name [String]
      # @param description [String]
      def initialize(name, description = '')
        @name = name
        @description = description
      end

      # Returns a string representation of the class
      # @return [String]
      def to_s
        str = @name
        str << " - #{@description}" unless @description == ''
        str
      end
    end
  end
end
