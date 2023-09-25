import { Resolvers } from "@dashkite/drn"
import * as Text from "@dashkite/joy/text"

Default =

  type: "default"
  template: "/{type}/{namespace}/{name}"
  describe: ({ type, namespace, name }) ->
    mode = process.env.mode ? "development"
    Text.titleCase "#{ namespace } #{ name } #{ mode }"

Resolvers.register Default

# allow other implementations to delegate to the default
export { Default }