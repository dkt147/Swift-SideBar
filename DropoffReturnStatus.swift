//
//  DropoffReturnStatus.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class DropoffReturnStatus: Codable {

  enum CodingKeys: String, CodingKey {
    case id
    case descriptionValue = "description"
  }

  var id: Int?
  var descriptionValue: String?

  init (id: Int?, descriptionValue: String?) {
    self.id = id
    self.descriptionValue = descriptionValue
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
    descriptionValue = try container.decodeIfPresent(String.self, forKey: .descriptionValue)
  }

}
