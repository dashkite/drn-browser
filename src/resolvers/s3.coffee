import { Resolvers } from "@dashkite/drn"

Resolvers.register
  type: "s3"
  template: "/s3/{name}/{namespace}/{tld}/{region?}"
  describe: ( description ) ->
    Default = Resolvers.dictionary.default
    Default.describe description

Resolvers.register
  type: "s3-website"
  template: "/s3-website/{name}/{namespace}/{tld}/{region?}"
  describe: ( description ) ->
    Default = Resolvers.dictionary.default
    Default.describe description
