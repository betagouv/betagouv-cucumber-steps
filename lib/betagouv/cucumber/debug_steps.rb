# frozen_string_literal: true

# rubocop:disable Cucumber/StepNaming
Quand("debugger") do
  debugger # rubocop:disable Lint/Debugger
end

Quand("print the page") do
  log page.body
end
# rubocop:enable Cucumber/StepNaming
