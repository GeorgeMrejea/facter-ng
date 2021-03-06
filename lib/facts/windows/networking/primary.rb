# frozen_string_literal: true

module Facter
  module Windows
    class NetworkingPrimary
      FACT_NAME = 'networking.primary'

      def call_the_resolver
        fact_value = Resolvers::Networking.resolve(:primary)

        ResolvedFact.new(FACT_NAME, fact_value)
      end
    end
  end
end
