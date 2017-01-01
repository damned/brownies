require 'rspec'

describe 'instance' do
  class MyClass
    @@something = 'zzz'
    @something = 'xxxxx'
    def initialize
      @something = 'yyy not'
    end

    def get_something
      @@something
    end
    def self.get_something_again
      @something
    end
    def something_v_classy
      @@something
    end
  end

  it 'should be fun for an instance again' do
    expect(MyClass.new.get_something).to include 'yy'
  end

  it 'should be fun for a class' do
    expect(MyClass.get_something_again).to eq 'xxxxx'
  end

  it 'should be classy and fun' do
    expect(MyClass.new.something_v_classy).to eq 'zzz'
  end
end