//
//  Locations.swift
//
//  Created by Hamza Hasan on 21/09/2021
//  Copyright (c) . All rights reserved.
//


import ObjectMapper
import RealmSwift
import ObjectMapper_Realm

public class Locations: Object, Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let latitude = "latitude"
    static let location = "location"
    static let longitude = "longitude"
    static let taskId = "task_id"
    static let type = "type"
  }

  // MARK: Properties
  dynamic var latitude = 0.0
  dynamic var location: String? = ""
  dynamic var longitude = 0.0
  dynamic var taskId = 0
  dynamic var type: String? = ""

  // MARK: ObjectMapper Initializers
  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.

  required convenience init?(map : Map){
    self.init()
  }

  override class func primaryKey() -> String? {
    return "taskId"
  }

  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public func mapping(map: Map) {
    latitude <- map[SerializationKeys.latitude]
    location <- map[SerializationKeys.location]
    longitude <- map[SerializationKeys.longitude]
    taskId <- map[SerializationKeys.taskId]
    type <- map[SerializationKeys.type]
  }


}
