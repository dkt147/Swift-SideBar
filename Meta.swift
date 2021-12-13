//
//  Meta.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Meta: Codable {

  enum CodingKeys: String, CodingKey {
    case links
  }

  var links: Links?

  init (links: Links?) {
    self.links = links
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    links = try container.decodeIfPresent(Links.self, forKey: .links)
  }

}
