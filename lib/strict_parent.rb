require "strict_parent/version"

module StrictParent
  def subclass_must_implement(*args)
    args.each do |arg|
      define_method arg.to_sym do
        fail NoMethodDefinedError, "You need to define #{arg} in #{self.class.name.split('::').last}"
      end
    end
  end

  class NoMethodDefinedError < StandardError; end
end
