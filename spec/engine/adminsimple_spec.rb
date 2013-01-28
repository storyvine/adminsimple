require 'spec_helper'

describe Adminsimple do

  it "is a module" do
    Adminsimple.should be_a(Module)
  end

  it "has a version" do
    Adminsimple::VERSION.should be_a(String)
  end

end
