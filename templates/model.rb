class <%= class_name %> < <%= parent_class_name.classify %>
  paginates_per <%= scaffold_parameter %>
end
