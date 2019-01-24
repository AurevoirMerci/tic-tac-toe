require 'bundler'
require 'colorize'
Bundler.require 

$:.unshift File.expand_path("./../lib", __FILE__)
require 'jeu'
require 'router'
Router.new.perform
