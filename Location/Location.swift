//
//  Location.swift
//
//  Created by Hamza Hasan on 21/09/2021
//  Copyright (c) . All rights reserved.
//


import ObjectMapper
import RealmSwift
import ObjectMapper_Realm

public class Location: Object, Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let latitude = "latitude"
    static let city = "city"
    static let state = "state"
    static let address = "address"
    static let longitude = "longitude"
    static let postalCode = "postal_code"
    static let country = "country"
  }

  // MARK: Properties
  dynamic var latitude = 0.0
  var city = List<City>()
  var state = List<State>()
  dynamic var address: String? = ""
  dynamic var longitude = 0.0
  dynamic var postalCode: String? = ""
  var country = List<Country>()

  // MARK: ObjectMapper Initializers
  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.

  required convenience init?(map : Map){
    self.init()
  }

  override class func primaryKey() -> String? {
    return "id"
  }

  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public func mapping(map: Map) {
    latitude <- map[SerializationKeys.latitude]
    city <- (map[SerializationKeys.city], ListTransform<City>())
    state <- (map[SerializationKeys.state], ListTransform<State>())
    address <- map[SerializationKeys.address]
    longitude <- map[SerializationKeys.longitude]
    postalCode <- map[SerializationKeys.postalCode]
    country <- (map[SerializationKeys.country], ListTransform<Country>())
  }


}
