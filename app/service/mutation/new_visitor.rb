module Servise
  module Mutation
    module NewVisitor

      def self.main(nik, profession)
        Model::Visitor.where(nik: nik, profession: profession).create
      end
    end
  end
end
