//
//  Sprint.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Sprint: Codable {

  enum CodingKeys: String, CodingKey {
    case id
  }

  var id: Int?

  init (id: Int?) {
    self.id = id
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
  }

}
