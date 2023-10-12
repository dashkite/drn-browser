import { Resolvers } from "@dashkite/drn"

Resolvers.register
  type: "graphene"
  template: "/graphene/{namespace}/{name}"
  describe: ( description ) ->
    Default = Resolvers.dictionary.default
    Default.describe description
