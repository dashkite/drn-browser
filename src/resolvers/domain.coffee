import { Resolvers } from "@dashkite/drn"
import { Default } from "./default"

Resolvers.register
  type: "domain" 
  template: "/domain/{name}/{namespace}/{tld}"
  describe: Default.describe

Resolvers.register
  type: "origin"
  template: "/origin/{name}/{namespace}/{tld}"
  describe: Default.describe

