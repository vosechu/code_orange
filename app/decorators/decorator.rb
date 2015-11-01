# Good info on a couple different decorator implementations
# http://robots.thoughtbot.com/evaluating-alternative-decorator-implementations-in
#
# It is initialized with the component it wants to decorate which it then delegates all undefined methods to:
# decorator = FakeDecorator.new(undecorated_obj)
#
# you can specific the name of the compontent you would like to use with the macro :component_name
# then in your decorator whatever you can access that component as a reader method
#
# class FakeDecorator < Decorator
#   component_name :fake_component
#
#   def alert_css_class
#     fake_component.cool_component?
#   end
# end
#
# if you want to handle any context setup, you can define a method and supply that method to the macro context setup
#
# class FakeDecorator < Decorator
#   context_setup :extra_info
#
#   def extra_info
#     @name = @component.name
#     @age = @component.age
#   end
# end
#
# if you want to access some more information in decorator, you can pass them in as a hash
# you can then access them with the opts reader
#
# class FakeDecorator < Decorator
#   def cool_css_class
#     opts[:name]
#   end
# end
#
# decorator = FakeDecorator.new(undecorated_obj, {:name => "French Montana"})

class Decorator
  def initialize(component, opts = {}, &blk)
    @component = component
    @opts = opts
  end

  def method_missing(msg, *args)
    @component.send(msg, *args)
  end

  attr_reader :component, :opts

  class << self
    def new(*args, &block)
      obj = self.allocate
      obj.send :initialize, *args, &block
      obj.send @context_setup unless @context_setup.nil?
      obj
    end

    def context_setup(meth)
      @context_setup = meth
    end

    def component_name(meth)
      define_method meth do
        @component
      end
    end
  end
end
