//
//  DropoffStatus.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class DropoffStatus: Codable {

  enum CodingKeys: String, CodingKey {
    case descriptionValue = "description"
    case id
  }

  var descriptionValue: String?
  var id: Int?

  init (descriptionValue: String?, id: Int?) {
    self.descriptionValue = descriptionValue
    self.id = id
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    descriptionValue = try container.decodeIfPresent(String.self, forKey: .descriptionValue)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
  }

}
