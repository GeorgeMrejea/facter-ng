# frozen_string_literal: true

module Facter
  module Fedora
    class OsName
      FACT_NAME = 'os.name'

      def call_the_resolver
        fact_value = Resolvers::OsRelease.resolve('NAME')

        ResolvedFact.new(FACT_NAME, fact_value)
      end
    end
  end
end