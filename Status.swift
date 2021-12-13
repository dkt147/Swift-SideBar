//
//  Status.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Status: Codable {

  enum CodingKeys: String, CodingKey {
    case dropoffStatus = "dropoff_status"
    case pickupDelayStatus = "pickup_delay_status"
    case dropoffDelayStatus = "dropoff_delay_status"
    case dropoffReturnStatus = "dropoff_return_status"
    case pickupReturnStatus = "pickup_return_status"
  }

  var dropoffStatus: [DropoffStatus]?
  var pickupDelayStatus: [PickupDelayStatus]?
  var dropoffDelayStatus: [DropoffDelayStatus]?
  var dropoffReturnStatus: [DropoffReturnStatus]?
  var pickupReturnStatus: [PickupReturnStatus]?

  init (dropoffStatus: [DropoffStatus]?, pickupDelayStatus: [PickupDelayStatus]?, dropoffDelayStatus: [DropoffDelayStatus]?, dropoffReturnStatus: [DropoffReturnStatus]?, pickupReturnStatus: [PickupReturnStatus]?) {
    self.dropoffStatus = dropoffStatus
    self.pickupDelayStatus = pickupDelayStatus
    self.dropoffDelayStatus = dropoffDelayStatus
    self.dropoffReturnStatus = dropoffReturnStatus
    self.pickupReturnStatus = pickupReturnStatus
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    dropoffStatus = try container.decodeIfPresent([DropoffStatus].self, forKey: .dropoffStatus)
    pickupDelayStatus = try container.decodeIfPresent([PickupDelayStatus].self, forKey: .pickupDelayStatus)
    dropoffDelayStatus = try container.decodeIfPresent([DropoffDelayStatus].self, forKey: .dropoffDelayStatus)
    dropoffReturnStatus = try container.decodeIfPresent([DropoffReturnStatus].self, forKey: .dropoffReturnStatus)
    pickupReturnStatus = try container.decodeIfPresent([PickupReturnStatus].self, forKey: .pickupReturnStatus)
  }

}
