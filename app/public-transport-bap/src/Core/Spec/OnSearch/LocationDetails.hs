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

Module      :  Core.Spec.OnSearch.LocationDetails
Copyright   :  (C) Juspay Technologies Pvt Ltd 2019-2022
License     :  Apache 2.0 (see the file LICENSE)
Maintainer  :  opensource@juspay.in
Stability   :  experimental
Portability :  non-portable
-}

module Core.Spec.OnSearch.LocationDetails where

import Beckn.Prelude
import Beckn.Types.Core.Migration.Gps
import Beckn.Utils.Schema (genericDeclareUnNamedSchema)
import Core.Spec.OnSearch.Descriptor
import Data.OpenApi hiding (name)

data LocationDetails = LocationDetails
  { id :: Text,
    descriptor :: DescriptorId,
    gps :: Gps,
    stop_code :: Text
  }
  deriving (Generic, Show, FromJSON, ToJSON)

instance ToSchema LocationDetails where
  declareNamedSchema = genericDeclareUnNamedSchema defaultSchemaOptions