//
//  Links.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Links: Codable {

  enum CodingKeys: String, CodingKey {
    case take
  }

  var take: Take?

  init (take: Take?) {
    self.take = take
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    take = try container.decodeIfPresent(Take.self, forKey: .take)
  }

}
