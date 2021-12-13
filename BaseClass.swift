//
//  BaseClass.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class BaseClass: Codable {

  enum CodingKeys: String, CodingKey {
    case status
    case body
    case message
    case paging
  }

  var status: Bool?
  var body: Body?
  var message: String?
  var paging: Paging?

  init (status: Bool?, body: Body?, message: String?, paging: Paging?) {
    self.status = status
    self.body = body
    self.message = message
    self.paging = paging
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    status = try container.decodeIfPresent(Bool.self, forKey: .status)
    body = try container.decodeIfPresent(Body.self, forKey: .body)
    message = try container.decodeIfPresent(String.self, forKey: .message)
    paging = try container.decodeIfPresent(Paging.self, forKey: .paging)
  }

}
