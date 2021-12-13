//
//  Weight.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Weight: Codable {

  enum CodingKeys: String, CodingKey {
    case unit
    case value
  }

  var unit: String?
  var value: Int?

  init (unit: String?, value: Int?) {
    self.unit = unit
    self.value = value
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    unit = try container.decodeIfPresent(String.self, forKey: .unit)
    value = try container.decodeIfPresent(Int.self, forKey: .value)
  }

}
