{- |
Copyright 2022 Juspay Technologies Pvt Ltd

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Module      :  Core.OnSearch

Copyright   :  (C) Juspay Technologies Pvt Ltd 2019-2022
License     :  Apache 2.0 (see the file LICENSE)
Maintainer  :  opensource@juspay.in
Stability   :  experimental
Portability :  non-portable
-}

module Core.OnSearch
  ( module Core.OnSearch,
    module Reexport,
  )
where

import Beckn.Prelude
import Beckn.Utils.Schema (genericDeclareUnNamedSchema)
import Core.OnSearch.Address as Reexport
import Core.OnSearch.Catalog as Reexport
import Core.OnSearch.Category as Reexport
import Core.OnSearch.Item as Reexport
import Core.OnSearch.ItemQuantity as Reexport
import Core.OnSearch.Location as Reexport
import Core.OnSearch.Provider as Reexport
import Data.OpenApi (ToSchema (declareNamedSchema), defaultSchemaOptions)

newtype OnSearchCatalog = OnSearchCatalog
  { catalog :: Catalog
  }
  deriving stock (Generic, Show)
  deriving anyclass (FromJSON, ToJSON)

instance ToSchema OnSearchCatalog where
  declareNamedSchema = genericDeclareUnNamedSchema defaultSchemaOptions
