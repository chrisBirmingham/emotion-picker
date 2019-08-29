require 'emotion/picker/version'
require 'emotion/picker/emotion'
require 'yaml'

EMOTIONS_FILE = "#{__dir__}/emotions.yml".freeze

module Emotion
  module Picker
    # Class for choosing an emotion
    class EmotionPicker
      def initialize
        @emotions = load
      end

      # Picks a random emotion and returns it
      # @return [Emotion]
      def pick
        rand = Random.new
        index = rand.rand(@emotions.length - 1)
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
