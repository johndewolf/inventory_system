require 'spec_helper'

describe Inventory do
  it { should have_valid(:name).when('Goose') }
  it { should_not have_valid(:name).when(nil) }

  it { should have_valid(:description).when('Wings') }
  it { should_not have_valid(:description).when(nil) }

  it { should have_valid(:quantity).when(2) }
  it { should_not have_valid(:quantity).when(nil) }
end
