{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -Wno-orphans #-}


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

Module      :  Storage.Tabular.RideBookingCancellationReason
Copyright   :  (C) Juspay Technologies Pvt Ltd 2019-2022
License     :  Apache 2.0 (see the file LICENSE)
Maintainer  :  opensource@juspay.in
Stability   :  experimental
Portability :  non-portable
-}

module Storage.Tabular.RideBookingCancellationReason where

import Beckn.Prelude
import Beckn.Storage.Esqueleto
import Beckn.Types.Id
import qualified Domain.Types.RideBookingCancellationReason as Domain
import Storage.Tabular.CancellationReason (CancellationReasonTId)
import Storage.Tabular.Person (PersonTId)
import Storage.Tabular.Ride (RideTId)
import Storage.Tabular.RideBooking (RideBookingTId)

mkPersist
  defaultSqlSettings
  [defaultQQ|
    RideBookingCancellationReasonT sql=ride_booking_cancellation_reason
      id Text
      driverId PersonTId Maybe
      rideBookingId RideBookingTId
      rideId RideTId Maybe
      source Domain.CancellationSource
      reasonCode CancellationReasonTId Maybe
      additionalInfo Text Maybe
      Primary id
      deriving Generic
    |]

instance TEntityKey RideBookingCancellationReasonT where
  type DomainKey RideBookingCancellationReasonT = Id Domain.RideBookingCancellationReason
  fromKey (RideBookingCancellationReasonTKey _id) = Id _id
  toKey (Id id) = RideBookingCancellationReasonTKey id

instance TEntity RideBookingCancellationReasonT Domain.RideBookingCancellationReason where
  fromTEntity entity = do
    let RideBookingCancellationReasonT {..} = entityVal entity
    return $
      Domain.RideBookingCancellationReason
        { id = Id id,
          driverId = fromKey <$> driverId,
          rideBookingId = fromKey rideBookingId,
          rideId = fromKey <$> rideId,
          reasonCode = fromKey <$> reasonCode,
          ..
        }
  toTType Domain.RideBookingCancellationReason {..} =
    RideBookingCancellationReasonT
      { id = getId id,
        driverId = toKey <$> driverId,
        rideBookingId = toKey rideBookingId,
        rideId = toKey <$> rideId,
        reasonCode = toKey <$> reasonCode,
        ..
      }
  toTEntity a =
    Entity (toKey a.id) $ toTType a
