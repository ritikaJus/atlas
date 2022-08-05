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

Module      :  API.Types
Copyright   :  (C) Juspay Technologies Pvt Ltd 2019-2022
License     :  Apache 2.0 (see the file LICENSE)
Maintainer  :  opensource@juspay.in
Stability   :  experimental
Portability :  non-portable
-}

module API.Types where

import Beckn.Types.Core.Ack (AckResponse (..))
import Beckn.Types.Core.ReqTypes
import qualified Core.API.Confirm as BAP
import qualified Core.API.Status as BAP
import qualified Core.Search as BAP
import Relude
import Servant

type SearchAPI =
  "search" :> ReqBody '[JSON] (BecknReq BAP.SearchIntent) :> Post '[JSON] AckResponse

type ConfirmAPI = BAP.ConfirmAPI

type StatusAPI = BAP.StatusAPI

type TotalAPI = SearchAPI :<|> ConfirmAPI :<|> StatusAPI

totalAPI :: Proxy TotalAPI
totalAPI = Proxy
