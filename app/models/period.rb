class Period < ActiveRecord::Base
  belongs_to :partner
    attr_accessor :order_size

    def order_size
      @order_size
    end
    def order_size=(value)
      @order_size=value
    end
end
