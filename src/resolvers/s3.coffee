import { Resolvers } from "@dashkite/drn"
import { Default } from "./default"

Resolvers.register
  type: "s3"
  template: "/s3/{name}/{namespace}/{tld}/{region?}"
  describe: Default.describe

Resolvers.register
  type: "s3-website"
  template: "/s3-website/{name}/{namespace}/{tld}/{region?}"
  describe: Default.describe
