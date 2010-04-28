module Validatable 
  class ValidatesPresenceOf < ValidationBase #:nodoc:
    def valid?(instance)
      value = instance.send(self.attribute)
      return true if allow_nil && value.nil?
      return true if allow_blank && value.blank?
      
      return false if instance.send(self.attribute).nil?
      value.respond_to?(:strip) ? instance.send(self.attribute).strip.length != 0 : true
    end
    
    def message(instance)
      super || "can't be empty"
    end
    
    def i18n
      super || "#{i18n_prefix}.blank"
    end
  end
end

