//
//  Country.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Country: Codable {

  enum CodingKeys: String, CodingKey {
    case id
    case name
  }

  var id: Int?
  var name: String?

  init (id: Int?, name: String?) {
    self.id = id
    self.name = name
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
    name = try container.decodeIfPresent(String.self, forKey: .name)
  }

}
