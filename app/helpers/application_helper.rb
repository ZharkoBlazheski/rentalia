# frozen_string_literal: true

module ApplicationHelper
  def field_has_error(field_name, form_object)
    return unless form_object.errors.include?(field_name)

    error_tag = form_object.errors.full_messages_for(field_name).join('. ')
    content_tag(:p, error_tag, class: 'error-message')
  end

  def humanize_boolean(value)
    case value
    when true
      'Yes'
    when false
      'No'
    when nil
      'Undefined'
    else
      'Invalid'
    end
  end
end
