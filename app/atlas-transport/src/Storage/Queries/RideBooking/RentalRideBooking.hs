{-# LANGUAGE TypeApplications #-}


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

Module      :  Storage.Queries.RideBooking.RentalRideBooking
Copyright   :  (C) Juspay Technologies Pvt Ltd 2019-2022
License     :  Apache 2.0 (see the file LICENSE)
Maintainer  :  opensource@juspay.in
Stability   :  experimental
Portability :  non-portable
-}

module Storage.Queries.RideBooking.RentalRideBooking where

import Beckn.Prelude
import Beckn.Storage.Esqueleto as Esq
import Beckn.Types.Id
import Domain.Types.RideBooking
import Domain.Types.RideBooking.RentalRideBooking
import Storage.Tabular.RideBooking.RentalRideBooking

findByRideBookingId :: Transactionable m => Id RideBooking -> m (Maybe RentalRideBooking)
findByRideBookingId rideBookingId =
  findOne $ do
    rentalRideBooking <- from $ table @RentalRideBookingT
    where_ $ rentalRideBooking ^. RentalRideBookingRideBookingId ==. val (getId rideBookingId)
    return rentalRideBooking
