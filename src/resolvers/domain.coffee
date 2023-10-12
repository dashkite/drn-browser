import { Resolvers } from "@dashkite/drn"

Resolvers.register
  type: "domain" 
  template: "/domain/{name}/{namespace}/{tld}"
  describe: ( description ) ->
    Default = Resolvers.dictionary.default
    Default.describe description

Resolvers.register
  type: "origin"
  template: "/origin/{name}/{namespace}/{tld}"
  describe: ( description ) ->
    Default = Resolvers.dictionary.default
    Default.describe description

