//
//  Take.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Take: Codable {

  enum CodingKeys: String, CodingKey {
    case method
    case link
  }

  var method: String?
  var link: String?

  init (method: String?, link: String?) {
    self.method = method
    self.link = link
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    method = try container.decodeIfPresent(String.self, forKey: .method)
    link = try container.decodeIfPresent(String.self, forKey: .link)
  }

}
