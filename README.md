minitest-speaks, Ruby gem
===================

DESCRIPTION: 'minitest-speaks' is a Ruby gem which will add audio notifications to MiniTest. Currently, it will alert you with a spoken "Done" when your tests have all completed. It uses the 'speaker' gem to access the Google Translator API, which takes care of the text-to-speech part.

Installation
============
First, make sure you have MiniTest or one of its flavors installed. Then, add the 'minitest-speaks' gem to the :test group in your project's Gemfile. Since **'minitest-speaks' requires the 'speaker' gem**, make sure that is also added to the :test group if it is not already installed. Your Gemfile should look something like this:

        group :test do
          gem 'minitest'
          # or whataver MiniTest flavor you like ... gem 'minitest-rails-capybara'
          gem 'minitest-speaks'
          gem 'speaker'
        end
        
... and 'bundle install'. If you do not hear "Done" after successfully installing the gem(s) and running your tests, you may need to install an audio player for your machine:

- Macs use afplay to play the audio file. If you do not hear the voice after installing the gem and running your tests, make sure to install that. 
- Ubuntu can use mpg123. Install with '$ sudo apt-get install mpg123' and you should be able to hear the voice.

Configuration
=============
If you are using GitHub, it makes sense to add the "audio.mp3" (found in your project's root directory after running the tests with minitest-speaks at least once) file to your .gitignore file. That file contains the latest spoken audio for your project. It's created each time you run your tests and isn't necessary to track.

If you'd like to change what the voice says when done running your tests, find the 'minitest-speaks.rb' file in the gem's local 'lib' directory. You can find that directory by typing in your terminal:
        
        $ bundle show minitest-speaks
        
Then 'cd' to the 'lib' directory in that directory and open the file in your editor. You will see this:

        require 'minitest/autorun'
        require 'rails/test_help'
        require 'speaker'
        
        MiniTest::Unit.after_tests {
          Speaker.new(text: "Done.").tts
        }
        
To change the spoken text, just change "Done." to "Tests completed." or whatever else you'd like it to say.

To do
=====
- Add ability to play any audio file (music, sound effects) instead of just text-to-speech audio
- Notify user when each test is complete and what the result was
- When tests end, notify user about the number of passes, failures, and errors
          

