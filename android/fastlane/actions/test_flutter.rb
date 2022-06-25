module Fastlane
  module Actions
    module SharedValues
      TEST_FLUTTER_CUSTOM_VALUE = :TEST_FLUTTER_CUSTOM_VALUE
    end

    class TestFlutterAction < Action
      def self.run(params)
        # fastlane will take care of reading in the parameter and fetching the environment variable:
        UI.message "Testing flutter app"

        # sh "shellcommand ./path"
        sh "echo flutter test"

        # Actions.lane_context[SharedValues::TEST_FLUTTER_CUSTOM_VALUE] = "my_val"
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "This action will run the test for flutter"
      end

      def self.details
        # Optional:
        # this is your chance to provide a more detailed description of this action
        "You can use this action to do cool things..."
      end

      def self.available_options
        # Define all options your action supports.

      
      end

      def self.output
        # Define the shared values you are going to provide
        # Example
        [
          ['TEST_FLUTTER_CUSTOM_VALUE', 'A description of what this value contains']
        ]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["Exolimit"]
      end

      def self.is_supported?(platform)
        # you can do things like
        #
        #  true
        #
        #  platform == :ios
        #
        #  [:ios, :mac].include?(platform)
        #

        platform == :android
      end
    end
  end
end
