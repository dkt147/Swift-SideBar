//
//  Location.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Location: Codable {

  enum CodingKeys: String, CodingKey {
    case longitude
    case country
    case address
    case city
    case state
    case latitude
    case postalCode = "postal_code"
  }

  var longitude: Float?
  var country: [Country]?
  var address: String?
  var city: [City]?
  var state: [State]?
  var latitude: Float?
  var postalCode: String?

  init (longitude: Float?, country: [Country]?, address: String?, city: [City]?, state: [State]?, latitude: Float?, postalCode: String?) {
    self.longitude = longitude
    self.country = country
    self.address = address
    self.city = city
    self.state = state
    self.latitude = latitude
    self.postalCode = postalCode
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    longitude = try container.decodeIfPresent(Float.self, forKey: .longitude)
    country = try container.decodeIfPresent([Country].self, forKey: .country)
    address = try container.decodeIfPresent(String.self, forKey: .address)
    city = try container.decodeIfPresent([City].self, forKey: .city)
    state = try container.decodeIfPresent([State].self, forKey: .state)
    latitude = try container.decodeIfPresent(Float.self, forKey: .latitude)
    postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
  }

}
