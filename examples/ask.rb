# encoding: utf-8

require 'tty-prompt'

prompt = TTY::Prompt.new

prompt.ask('Do you like Ruby?', required: true, default: true)

prompt.ask('What is your username?') do |q|
  q.validate(/^[^\.]+\.[^\.]+/)
end
