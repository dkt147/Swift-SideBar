//
//  Confirmation.swift
//
//  Created by Hamza Hasan on 21/09/2021
//  Copyright (c) . All rights reserved.
//


import ObjectMapper
import RealmSwift
import ObjectMapper_Realm

public class Confirmation: Object, Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let confirmed = "confirmed"
    static let action = "action"
    static let name = "name"
    static let ordinal = "ordinal"
    static let id = "id"
    static let taskId = "task_id"
    static let inputType = "input_type"
    static let title = "title"
  }

  // MARK: Properties
  dynamic var confirmed = 0
  dynamic var action: Action?
  dynamic var name: String? = ""
  dynamic var ordinal = 0
  dynamic var id = 0
  dynamic var taskId = 0
  dynamic var inputType: String? = ""
  dynamic var title: String? = ""

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
    confirmed <- map[SerializationKeys.confirmed]
    action <- map[SerializationKeys.action]
    name <- map[SerializationKeys.name]
    ordinal <- map[SerializationKeys.ordinal]
    id <- map[SerializationKeys.id]
    taskId <- map[SerializationKeys.taskId]
    inputType <- map[SerializationKeys.inputType]
    title <- map[SerializationKeys.title]
  }


}
