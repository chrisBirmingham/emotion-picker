# frozen_string_literal: true

require 'yaml'

module Emotion
  module Picker
    EMOTIONS_FILE = "#{__dir__}/emotions.yml"
    private_constant :EMOTIONS_FILE

    autoload :Emotion, 'emotion/picker/emotion'
    autoload :Cli, 'emotion/picker/cli'
    autoload :VERSION, 'emotion/picker/version'

    # Class for choosing an emotion
    class EmotionPicker
      def initialize
        @emotions = load
      end

      # Picks a random emotion and returns it
      # @return [Emotion]
      def pick
        rand = Random.new
        index = rand.rand(0...@emotions.length)
        @emotions[index]
      end

      private

      # Loads the emotions file into an internal array
      # @return [Array]
      def load
        emotions = []
        parsed = YAML.load_file(EMOTIONS_FILE)

        parsed.each do |emotion|
          emote = Emotion.new(emotion['name'], emotion['description'])
          emotions.push(emote)
        end

        emotions
      end
    end
  end
end
