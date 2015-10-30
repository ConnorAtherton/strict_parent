require 'spec_helper'

describe StrictParent do
  before :all do
    class A
      extend StrictParent

      subclass_must_implement :a, :b
    end

    class B < A
      def a; end
    end
  end

  it 'has a version number' do
    expect(StrictParent::VERSION).not_to be nil
  end

  it 'does not throw if the child implements the method' do
    expect { B.new.a }.to_not raise_error
  end

  it 'throws if the child does not define the method' do
    expect { B.new.b }.to raise_error(StrictParent::NoMethodDefinedError)
  end
end
