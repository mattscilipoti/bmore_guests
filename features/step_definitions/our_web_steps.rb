#Then the "labeled" field [within "css selector"] should be read only.
Then /^the "([^\"]*)" field(?: within "([^\"]*)")? should be read only$/ do |field_finder, container_selector|
 with_scope(container_selector) do
    if defined?(Spec::Rails::Matchers)
      find_field(field_finder)['disabled'] == 'disabled'
    else
      assert find_field(field_finder)['disabled'] == 'disabled'
    end
  end
end
