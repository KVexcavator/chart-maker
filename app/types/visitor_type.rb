VisitorType = GraphQL::ObjectType.define do
  name "Visitor"

  field :id, !types.ID
  field :nik, !types.String
  field :profession, !types.String
end
