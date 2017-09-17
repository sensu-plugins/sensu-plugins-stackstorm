#!/usr/bin/env ruby

require 'sensu-plugins-stackstorm'

SensuPluginsStackStorm::Command.run_python(*ARGV)
