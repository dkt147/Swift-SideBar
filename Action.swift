//
//  Action.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Action: Codable {

  enum CodingKeys: String, CodingKey {
    case url
    case method
  }

  var url: String?
  var method: String?

  init (url: String?, method: String?) {
    self.url = url
    self.method = method
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    url = try container.decodeIfPresent(String.self, forKey: .url)
    method = try container.decodeIfPresent(String.self, forKey: .method)
  }

}
