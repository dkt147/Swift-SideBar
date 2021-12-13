//
//  Body.swift
//
//  Created by Hamza Hasan on 21/09/2021
//  Copyright (c) . All rights reserved.
//


import ObjectMapper
import RealmSwift
import ObjectMapper_Realm

public class Body: Object, Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let orderDetails = "OrderDetails"
  }

  // MARK: Properties
  dynamic var orderDetails: OrderDetails?

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
    orderDetails <- map[SerializationKeys.orderDetails]
  }


}
