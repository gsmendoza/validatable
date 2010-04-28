module Validatable
  class ValidatesAcceptanceOf < ValidationBase #:nodoc:    
    def valid?(instance)
      value = instance.send(self.attribute)
      return true if allow_nil && value.nil?
      return true if allow_blank && value.blank?
      %w(1 true t).include?(value)
    end
    
    def message(instance)
      super || "must be accepted"
    end
    
    def i18n
      super || "#{i18n_prefix}.accepted"
    end
  end
end