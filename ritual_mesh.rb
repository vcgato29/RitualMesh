#!/usr/bin/env ruby
require 'json'
require 'securerandom'
require 'openssl'
require_relative './lib/genesis'
require_relative './lib/invoker'

class RitualMesh
  def initialize
    @id = SecureRandom.uuid
    @genesis = Genesis.new(self)
    @invoker = Invoker.new(self)
    log "Ritual Mesh initialized. ID: #{@id}"
  end

def run
  puts ">> Invoke >"
  while input = gets&.chomp
    case input
    when "init"
      puts ":: INIT: Ritual system initialized."
    when "summon"
      puts ":: SUMMON: Invocation successful."
    # Add more ritual commands here...

    else
      # Pass unknown commands to the system shell
      system(input) || puts("Unknown invocation: #{input}")
    end
  end
end

