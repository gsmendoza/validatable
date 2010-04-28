module Validatable
  class ValidatesTrueFor < ValidationBase #:nodoc:
    required_option :logic
  
    def valid?(instance)
      instance.instance_eval(&logic) == true
    end
    
    def message(instance)
      super || "is invalid"
    end
    
    def i18n
      super || "#{i18n_prefix}true"
    end
  end
end