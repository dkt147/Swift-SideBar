//
//  OrderDetails.swift
//
//  Created by Hamza Hasan on 21/09/2021
//  Copyright (c) . All rights reserved.
//


import ObjectMapper
import RealmSwift
import ObjectMapper_Realm

public class OrderDetails: Object, Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let tip = "tip"
    static let creditAmount = "credit_amount"
    static let meta = "meta"
    static let distanceAllowance = "distance_allowance"
    static let subtotal = "subtotal"
    static let joey = "joey"
    static let distanceCharge = "distance_charge"
    static let tax = "tax"
    static let totalTaskCharge = "total_task_charge"
    static let history = "history"
    static let status = "status"
    static let task = "task"
    static let id = "id"
    static let vehicleId = "vehicle_id"
    static let distance = "distance"
    static let total = "total"
    static let duration = "duration"
    static let time = "time"
    static let grandTotal = "grand_total"
  }

  // MARK: Properties
  dynamic var tip = 0
  dynamic var creditAmount = 0
  dynamic var meta: Meta?
  dynamic var distanceAllowance = 0
  dynamic var subtotal = 0
  dynamic var joey: Joey?
  dynamic var distanceCharge = 0
  dynamic var tax = 0.0
  dynamic var totalTaskCharge = 0
  var history = List<History>()
  dynamic var status: Status?
  var task = List<Task>()
  dynamic var id = 0
  dynamic var vehicleId = 0
  dynamic var distance = 0.0
  dynamic var total = 0.0
  dynamic var duration: String? = ""
  dynamic var time = 0
  dynamic var grandTotal = 0.0

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
    tip <- map[SerializationKeys.tip]
    creditAmount <- map[SerializationKeys.creditAmount]
    meta <- map[SerializationKeys.meta]
    distanceAllowance <- map[SerializationKeys.distanceAllowance]
    subtotal <- map[SerializationKeys.subtotal]
    joey <- map[SerializationKeys.joey]
    distanceCharge <- map[SerializationKeys.distanceCharge]
    tax <- map[SerializationKeys.tax]
    totalTaskCharge <- map[SerializationKeys.totalTaskCharge]
    history <- (map[SerializationKeys.history], ListTransform<History>())
    status <- map[SerializationKeys.status]
    task <- (map[SerializationKeys.task], ListTransform<Task>())
    id <- map[SerializationKeys.id]
    vehicleId <- map[SerializationKeys.vehicleId]
    distance <- map[SerializationKeys.distance]
    total <- map[SerializationKeys.total]
    duration <- map[SerializationKeys.duration]
    time <- map[SerializationKeys.time]
    grandTotal <- map[SerializationKeys.grandTotal]
  }


}
