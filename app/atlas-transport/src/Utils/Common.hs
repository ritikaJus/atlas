{-# OPTIONS_GHC -Wno-missing-signatures #-}


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

Module      :  Utils.Common

Copyright   :  (C) Juspay Technologies Pvt Ltd 2019-2022
License     :  Apache 2.0 (see the file LICENSE)
Maintainer  :  opensource@juspay.in
Stability   :  experimental
Portability :  non-portable
-}

module Utils.Common
  ( module Utils.Common,
    module CoreCommon,
  )
where

import Beckn.Prelude
import Beckn.Utils.Common as CoreCommon
import Beckn.Utils.Shutdown
import qualified Crypto.Number.Generate as Cryptonite

generateOTPCode :: MonadFlow m => m Text
generateOTPCode =
  liftIO $ padNumber 4 <$> Cryptonite.generateBetween 1 9999

service ::
  ( Forkable m,
    MonadIO m,
    MonadReader r m,
    HasField "isShuttingDown" r Shutdown,
    MonadCatch m,
    Log m
  ) =>
  Text ->
  m () ->
  m ()
service name f =
  fork name . untilShutdown $
    f `catch` \e -> do
      log ERROR $ makeLogSomeException e
      threadDelay 1000000

withRandomId :: (MonadGuid m, Log m) => m b -> m b
withRandomId f = do
  id <- generateGUID
  withLogTag id f
