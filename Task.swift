//
//  Task.swift
//
//  Created by JOEYCO-0072PK on 14/07/2021
//  Copyright (c) . All rights reserved.
//

import Foundation

class Task: Codable {

  enum CodingKeys: String, CodingKey {
    case type
    case status
    case trackingCode = "tracking_code"
    case isCompleted = "is_completed"
    case weight
    case confirmSignature = "confirm_signature"
    case startTime = "start_time"
    case endTime = "end_time"
    case merchantOrderNum = "merchant_order_num"
    case sprint
    case etcTime = "etc_time"
    case contact
    case confirmImage = "confirm_image"
    case confirmation
    case confirmSeal = "confirm_seal"
    case num
    case location = "Location"
    case isActive = "is_active"
    case dueTime = "due_time"
    case confirmPin = "confirm_pin"
    case id
    case etaTime = "eta_time"
  }

  var type: String?
  var status: Status?
  var trackingCode: String?
  var isCompleted: Int?
  var weight: Weight?
  var confirmSignature: Int?
  var startTime: String?
  var endTime: String?
  var merchantOrderNum: String?
  var sprint: Sprint?
  var etcTime: Int?
  var contact: [Contact]?
  var confirmImage: Int?
  var confirmation: [Confirmation]?
  var confirmSeal: Int?
  var num: String?
  var location: [Location]?
  var isActive: Int?
  var dueTime: Int?
  var confirmPin: Int?
  var id: Int?
  var etaTime: Int?

  init (type: String?, status: Status?, trackingCode: String?, isCompleted: Int?, weight: Weight?, confirmSignature: Int?, startTime: String?, endTime: String?, merchantOrderNum: String?, sprint: Sprint?, etcTime: Int?, contact: [Contact]?, confirmImage: Int?, confirmation: [Confirmation]?, confirmSeal: Int?, num: String?, location: [Location]?, isActive: Int?, dueTime: Int?, confirmPin: Int?, id: Int?, etaTime: Int?) {
    self.type = type
    self.status = status
    self.trackingCode = trackingCode
    self.isCompleted = isCompleted
    self.weight = weight
    self.confirmSignature = confirmSignature
    self.startTime = startTime
    self.endTime = endTime
    self.merchantOrderNum = merchantOrderNum
    self.sprint = sprint
    self.etcTime = etcTime
    self.contact = contact
    self.confirmImage = confirmImage
    self.confirmation = confirmation
    self.confirmSeal = confirmSeal
    self.num = num
    self.location = location
    self.isActive = isActive
    self.dueTime = dueTime
    self.confirmPin = confirmPin
    self.id = id
    self.etaTime = etaTime
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    type = try container.decodeIfPresent(String.self, forKey: .type)
    status = try container.decodeIfPresent(Status.self, forKey: .status)
    trackingCode = try container.decodeIfPresent(String.self, forKey: .trackingCode)
    isCompleted = try container.decodeIfPresent(Int.self, forKey: .isCompleted)
    weight = try container.decodeIfPresent(Weight.self, forKey: .weight)
    confirmSignature = try container.decodeIfPresent(Int.self, forKey: .confirmSignature)
    startTime = try container.decodeIfPresent(String.self, forKey: .startTime)
    endTime = try container.decodeIfPresent(String.self, forKey: .endTime)
    merchantOrderNum = try container.decodeIfPresent(String.self, forKey: .merchantOrderNum)
    sprint = try container.decodeIfPresent(Sprint.self, forKey: .sprint)
    etcTime = try container.decodeIfPresent(Int.self, forKey: .etcTime)
    contact = try container.decodeIfPresent([Contact].self, forKey: .contact)
    confirmImage = try container.decodeIfPresent(Int.self, forKey: .confirmImage)
    confirmation = try container.decodeIfPresent([Confirmation].self, forKey: .confirmation)
    confirmSeal = try container.decodeIfPresent(Int.self, forKey: .confirmSeal)
    num = try container.decodeIfPresent(String.self, forKey: .num)
    location = try container.decodeIfPresent([Location].self, forKey: .location)
    isActive = try container.decodeIfPresent(Int.self, forKey: .isActive)
    dueTime = try container.decodeIfPresent(Int.self, forKey: .dueTime)
    confirmPin = try container.decodeIfPresent(Int.self, forKey: .confirmPin)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
    etaTime = try container.decodeIfPresent(Int.self, forKey: .etaTime)
  }

}
