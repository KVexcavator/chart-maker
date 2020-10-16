MutationType = GraphQL::ObjectType.define do
  name 'Mutation'
  description 'The mutation root of this schema'

  field :new_visitor do
    description "Create a new Visitor"
    type VisitorType
    argument :nik, !types.String
    argument :profession, !types.String

    resolve ->(obj, args, ctx) do
      Servise::Mutation::NewVisitor.main(args["nik"], args["profession"])
    end
  end
end
