# encoding: utf-8

require File.dirname(__FILE__) + '/test_helper'

describe "A Unichars class subclassed from ActiveSupport::Multibyte::Chars" do
  include TestHelpers
  
  it "should define an index method" do
    chars('').methods.map { |m| m.to_sym }.should.include(:index)
  end
end if active_support_loaded?
