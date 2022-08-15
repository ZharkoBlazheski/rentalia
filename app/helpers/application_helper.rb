module ApplicationHelper
    def field_has_error(field_name, form_object)
        return unless form_object.errors.include?(field_name)

        error_tag = form_object.errors.full_messages_for(field_name).join('. ')
        content_tag(:p, error_tag, class: 'error-message')
      end
end
