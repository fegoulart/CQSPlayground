//
//  UpdateProductReviewTotalsService.swift
//  CQSPlayground
//
//  Copyright © 2023 Alelo. All rights reserved.
//

import Foundation

public class UpdateProductReviewTotalsService: CommandService {
    public typealias Command = UpdateProductReviewTotals

    public func execute(_ command: UpdateProductReviewTotals) {
        // ...
        print("UpdateProductReviewTotalsService")
    }
}
