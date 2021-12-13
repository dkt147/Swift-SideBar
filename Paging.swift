//
//  Paging.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Paging: Codable {

  enum CodingKeys: String, CodingKey {

  }



  init () {

  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

  }

}
