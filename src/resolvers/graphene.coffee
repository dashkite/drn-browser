import { Resolvers } from "@dashkite/drn"
import { Default } from "./default"

Resolvers.register
  type: "graphene"
  template: "/graphene/{namespace}/{name}"
  describe: Default.describe
