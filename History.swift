//
//  History.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class History: Codable {

  enum CodingKeys: String, CodingKey {
    case date
    case code
    case descriptionValue = "description"
  }

  var date: String?
  var code: Int?
  var descriptionValue: String?

  init (date: String?, code: Int?, descriptionValue: String?) {
    self.date = date
    self.code = code
    self.descriptionValue = descriptionValue
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    date = try container.decodeIfPresent(String.self, forKey: .date)
    code = try container.decodeIfPresent(Int.self, forKey: .code)
    descriptionValue = try container.decodeIfPresent(String.self, forKey: .descriptionValue)
  }

}
