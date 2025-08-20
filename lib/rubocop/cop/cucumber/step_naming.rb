# frozen_string_literal: true

module RuboCop
  module Cop
    module Cucumber
      # this cop ensures we write constitent steps: active voice for
      # the actions, and passive voice for the expectations.
      #
      # ---
      # Actions :
      #
      # bad :
      # Quand le bouton Enregistrer est cliqué

      # good :
      # Quand je clique sur le bouton Enregistrer
      #
      # ---
      # Exceptations :
      #
      # bad :
      # Alors je peux voir dans le tableau X que la colonne Y contient dans cet ordre
      #
      # good :
      # Alors la colonne X dans le tableau Y contient dans cet ordre :
      #
      class StepNaming < Base
        MSG_QUAND_SHOULD_START_WITH_JE = '"Quand" steps should start with "je"'
        MSG_ALORS_SHOULD_NOT_START_WITH_JE = '"Alors" steps should not start with "je"'

        def on_send(node)
          return unless step_definition?(node)

          step_type = node.method_name.to_s
          step_text = extract_step_text(node)

          return unless step_text

          case step_type
          when "Quand"
            check_quand_step(node, step_text)
          when "Alors"
            check_alors_step(node, step_text)
          end
        end

        private

        def step_definition?(node)
          %w[Quand Alors].include?(node.method_name.to_s) && node.arguments.any?
        end

        def extract_step_text(node)
          first_arg = node.arguments.first
          return unless first_arg&.str_type?

          first_arg.str_content
        end

        def check_quand_step(node, step_text)
          return if step_text.start_with?("je ") || step_text.start_with?("j'")

          add_offense(node, message: MSG_QUAND_SHOULD_START_WITH_JE)
        end

        def check_alors_step(node, step_text)
          return unless step_text.start_with?("je ") || step_text.start_with?("j'")

          add_offense(node, message: MSG_ALORS_SHOULD_NOT_START_WITH_JE)
        end
      end
    end
  end
end
