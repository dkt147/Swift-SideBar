//
//  Contact.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Contact: Codable {

  enum CodingKeys: String, CodingKey {
    case name
    case id
    case email
    case phone
  }

  var name: String?
  var id: Int?
  var email: String?
  var phone: String?

  init (name: String?, id: Int?, email: String?, phone: String?) {
    self.name = name
    self.id = id
    self.email = email
    self.phone = phone
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    name = try container.decodeIfPresent(String.self, forKey: .name)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
    email = try container.decodeIfPresent(String.self, forKey: .email)
    phone = try container.decodeIfPresent(String.self, forKey: .phone)
  }

}
