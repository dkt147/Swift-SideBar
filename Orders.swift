//
//  Orders.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Orders: Codable {

  enum CodingKeys: String, CodingKey {
    case creditAmount = "credit_amount"
    case meta
    case grandTotal = "grand_total"
    case tax
    case subtotal
    case id
    case totalTaskCharge = "total_task_charge"
    case distanceAllowance = "distance_allowance"
    case distance
    case duration
    case vehicleId = "vehicle_id"
    case time
    case task
    case status
    case total
    case history
    case tip
    case joey
    case distanceCharge = "distance_charge"
  }

  var creditAmount: Int?
  var meta: Meta?
  var grandTotal: Float?
  var tax: Float?
  var subtotal: Int?
  var id: Int?
  var totalTaskCharge: Int?
  var distanceAllowance: Int?
  var distance: Float?
  var duration: String?
  var vehicleId: Int?
  var time: Int?
  var task: [Task]?
  var status: Status?
  var total: Float?
  var history: [History]?
  var tip: Int?
  var joey: Joey?
  var distanceCharge: Int?

  init (creditAmount: Int?, meta: Meta?, grandTotal: Float?, tax: Float?, subtotal: Int?, id: Int?, totalTaskCharge: Int?, distanceAllowance: Int?, distance: Float?, duration: String?, vehicleId: Int?, time: Int?, task: [Task]?, status: Status?, total: Float?, history: [History]?, tip: Int?, joey: Joey?, distanceCharge: Int?) {
    self.creditAmount = creditAmount
    self.meta = meta
    self.grandTotal = grandTotal
    self.tax = tax
    self.subtotal = subtotal
    self.id = id
    self.totalTaskCharge = totalTaskCharge
    self.distanceAllowance = distanceAllowance
    self.distance = distance
    self.duration = duration
    self.vehicleId = vehicleId
    self.time = time
    self.task = task
    self.status = status
    self.total = total
    self.history = history
    self.tip = tip
    self.joey = joey
    self.distanceCharge = distanceCharge
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    creditAmount = try container.decodeIfPresent(Int.self, forKey: .creditAmount)
    meta = try container.decodeIfPresent(Meta.self, forKey: .meta)
    grandTotal = try container.decodeIfPresent(Float.self, forKey: .grandTotal)
    tax = try container.decodeIfPresent(Float.self, forKey: .tax)
    subtotal = try container.decodeIfPresent(Int.self, forKey: .subtotal)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
    totalTaskCharge = try container.decodeIfPresent(Int.self, forKey: .totalTaskCharge)
    distanceAllowance = try container.decodeIfPresent(Int.self, forKey: .distanceAllowance)
    distance = try container.decodeIfPresent(Float.self, forKey: .distance)
    duration = try container.decodeIfPresent(String.self, forKey: .duration)
    vehicleId = try container.decodeIfPresent(Int.self, forKey: .vehicleId)
    time = try container.decodeIfPresent(Int.self, forKey: .time)
    task = try container.decodeIfPresent([Task].self, forKey: .task)
    status = try container.decodeIfPresent(Status.self, forKey: .status)
    total = try container.decodeIfPresent(Float.self, forKey: .total)
    history = try container.decodeIfPresent([History].self, forKey: .history)
    tip = try container.decodeIfPresent(Int.self, forKey: .tip)
    joey = try container.decodeIfPresent(Joey.self, forKey: .joey)
    distanceCharge = try container.decodeIfPresent(Int.self, forKey: .distanceCharge)
  }

}
