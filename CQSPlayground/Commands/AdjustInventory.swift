//
//  AdjustInventory.swift
//  CQSPlayground
//
//  Copyright © 2023 Alelo. All rights reserved.
//

import Foundation

public struct AdjustInventory {
    public var productId: UUID
    public var decrease: Bool
    public var quantity: Int
}
