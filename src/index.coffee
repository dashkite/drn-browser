import { generic } from "@dashkite/joy/generic"
import * as Type from "@dashkite/joy/type"
import Registry from "@dashkite/helium"

import "./resolvers"

import {
  encode
  decode
  describe
} from "@dashkite/drn"

resolve = generic
  name: "resolve"
  description: "Resolve a DRN"

generic resolve,
  Type.isObject,
  ( description ) -> resolve encode description

generic resolve,
  Type.isString,
  ( uri ) ->
    dictionary = await Registry.get "sky.env.drn.dictionary"
    if ( name = dictionary[ uri ])?
      name
    else
      throw new Error "unable to resolve DRN [ #{ uri } ]" 

generic resolve,
  Type.isArray,
  ( uris ) ->
    Promise.all ( resolve uri for uri in uris )

export { encode, decode, resolve, describe }