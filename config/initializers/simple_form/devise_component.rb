module SimpleForm
  module Components
    # Needs to be enabled in order to do automatic lookups
    module Devise
      # Name of the component method
      def devise(wrapper_options = nil)
        @devise ||= begin
          options[:devise].to_s.html_safe if options[:devise].present?
        end
      end

      # Used when the number is optional
      def has_devise?
        devise.present?
      end
    end
  end
end

SimpleForm::Inputs::Base.send(:include, SimpleForm::Components::Devise)
