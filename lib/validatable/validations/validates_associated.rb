module Validatable
  class ValidatesAssociated < ValidationBase #:nodoc:
    def valid?(instance)
      Array(instance.send(attribute)).compact.map do |child|
        child.valid?
      end.all?
    end

    def message(instance)
      super || "is invalid"
    end
    
    def i18n
      super || "#{i18n_prefix}.associated"
    end
  end
end
