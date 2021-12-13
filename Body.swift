//
//  Body.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Body: Codable {

  enum CodingKeys: String, CodingKey {
    case orders = "Orders"
    case status = "Status"
    case atLocationRdaius = "at_location_rdaius"
  }

  var orders: [Orders]?
  var status: Status?
  var atLocationRdaius: String?

  init (orders: [Orders]?, status: Status?, atLocationRdaius: String?) {
    self.orders = orders
    self.status = status
    self.atLocationRdaius = atLocationRdaius
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    orders = try container.decodeIfPresent([Orders].self, forKey: .orders)
    status = try container.decodeIfPresent(Status.self, forKey: .status)
    atLocationRdaius = try container.decodeIfPresent(String.self, forKey: .atLocationRdaius)
  }

}
