require 'minitest/autorun'
require 'rails/test_help'
require 'speaker'

MiniTest::Unit.after_tests {
  Speaker.new(text: "Done.").tts
  }
