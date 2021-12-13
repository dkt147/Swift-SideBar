//
//  Contact.swift
//
//  Created by Hamza Hasan on 21/09/2021
//  Copyright (c) . All rights reserved.
//


import ObjectMapper
import RealmSwift
import ObjectMapper_Realm

public class Contact: Object, Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let phone = "phone"
    static let name = "name"
    static let email = "email"
    static let id = "id"
  }

  // MARK: Properties
  dynamic var phone: String? = ""
  dynamic var name: String? = ""
  dynamic var email: String? = ""
  dynamic var id = 0

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
    phone <- map[SerializationKeys.phone]
    name <- map[SerializationKeys.name]
    email <- map[SerializationKeys.email]
    id <- map[SerializationKeys.id]
  }


}
