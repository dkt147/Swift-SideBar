//
//  Joey.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Joey: Codable {

  enum CodingKeys: String, CodingKey {
    case name
    case id
  }

  var name: String?
  var id: Int?

  init (name: String?, id: Int?) {
    self.name = name
    self.id = id
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    name = try container.decodeIfPresent(String.self, forKey: .name)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
  }

}
