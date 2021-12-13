//
//  Task.swift
//
//  Created by Hamza Hasan on 21/09/2021
//  Copyright (c) . All rights reserved.
//


import ObjectMapper
import RealmSwift
import ObjectMapper_Realm

public class Task: Object, Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let startTime = "start_time"
    static let confirmPin = "confirm_pin"
    static let dueTime = "due_time"
    static let isActive = "is_active"
    static let confirmation = "confirmation"
    static let etcTime = "etc_time"
    static let type = "type"
    static let trackingCode = "tracking_code"
    static let confirmSignature = "confirm_signature"
    static let sprint = "sprint"
    static let etaTime = "eta_time"
    static let status = "status"
    static let confirmImage = "confirm_image"
    static let confirmSeal = "confirm_seal"
    static let id = "id"
    static let location = "Location"
    static let endTime = "end_time"
    static let merchantOrderNum = "merchant_order_num"
    static let contact = "contact"
    static let weight = "weight"
    static let isCompleted = "is_completed"
    static let num = "num"
  }

  // MARK: Properties
  dynamic var startTime: String? = ""
  dynamic var confirmPin = 0
  dynamic var dueTime = 0
  dynamic var isActive = 0
  var confirmation = List<Confirmation>()
  dynamic var etcTime = 0
  dynamic var type: String? = ""
  dynamic var trackingCode: String? = ""
  dynamic var confirmSignature = 0
  dynamic var sprint: Sprint?
  dynamic var etaTime = 0
  dynamic var status: Status?
  dynamic var confirmImage = 0
  dynamic var confirmSeal = 0
  dynamic var id = 0
  var location = List<Location>()
  dynamic var endTime: String? = ""
  dynamic var merchantOrderNum: String? = ""
  var contact = List<Contact>()
  dynamic var weight: Weight?
  dynamic var isCompleted = 0
  dynamic var num: String? = ""

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
    startTime <- map[SerializationKeys.startTime]
    confirmPin <- map[SerializationKeys.confirmPin]
    dueTime <- map[SerializationKeys.dueTime]
    isActive <- map[SerializationKeys.isActive]
    confirmation <- (map[SerializationKeys.confirmation], ListTransform<Confirmation>())
    etcTime <- map[SerializationKeys.etcTime]
    type <- map[SerializationKeys.type]
    trackingCode <- map[SerializationKeys.trackingCode]
    confirmSignature <- map[SerializationKeys.confirmSignature]
    sprint <- map[SerializationKeys.sprint]
    etaTime <- map[SerializationKeys.etaTime]
    status <- map[SerializationKeys.status]
    confirmImage <- map[SerializationKeys.confirmImage]
    confirmSeal <- map[SerializationKeys.confirmSeal]
    id <- map[SerializationKeys.id]
    location <- (map[SerializationKeys.location], ListTransform<Location>())
    endTime <- map[SerializationKeys.endTime]
    merchantOrderNum <- map[SerializationKeys.merchantOrderNum]
    contact <- (map[SerializationKeys.contact], ListTransform<Contact>())
    weight <- map[SerializationKeys.weight]
    isCompleted <- map[SerializationKeys.isCompleted]
    num <- map[SerializationKeys.num]
  }


}
