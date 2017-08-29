require 'rails_helper'

describe Project do
  it { should have_valid(:title).when('Dragon', 'Blizzard Fan Art') }
  it { should_not have_valid(:title).when(nil, '') }

  it { should have_valid(:description).when('My take on a fantasy staple, a beast as tall as a castle that breathes fire') }
  it { should_not have_valid(:description).when(nil, '') }

  it { should have_valid(:medium).when('user@example.com', 'another@gmail.com') }
  it { should_not have_valid(:medium).when(nil, '', 'user','userxample.com') }
end
