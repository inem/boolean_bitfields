module BooleanBitfields
  module Base
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def boolean_bitfield(column)
        define_method column do
          read_attribute(column).getbyte(0) == 1
        end
      end

      def boolean_bitfields(*args)
        args.each do |column|
          boolean_bitfield column
        end
      end
    end
  end
end

ActiveRecord::Base.send :include, BooleanBitfields::Base