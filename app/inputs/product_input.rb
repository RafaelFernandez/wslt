class ProductInput < SimpleForm::Inputs::StringInput
  def input(wrapper_options = nil)
    inputs = (
      type_input <<
      @builder.label(:"online_price", 'Online Price') <<
      online_price_input <<
      @builder.label(:"online_price", 'Offline Price') <<
      offline_price_input
    )

    inputs.html_safe
  end


  def type_input
    template.text_field_tag(
      "element[#{options[:position]}][value(type)]",
      @builder.object.value,
      id: "element_#{options[:position]}_value_type",
      class: "form-control string optional"
    )
  end

  def online_price_input
    template.text_field_tag(
      "element[#{options[:position]}][value(online_price)]",
      @builder.object.value,
      id: "element_#{options[:position]}_online_price_type",
      class: "form-control string optional"
    )
  end

  def offline_price_input
    template.text_field_tag(
      "element[#{options[:position]}][value(offline_price)]",
      @builder.object.value,
      id: "element_#{options[:position]}_offline_price_type",
      class: "form-control string optional"
    )
  end

end
