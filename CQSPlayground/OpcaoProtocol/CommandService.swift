//
//  CommandService.swift
//  CQSPlayground
//
//  Copyright © 2023 Alelo. All rights reserved.
//

import Foundation

public protocol CommandService {
    associatedtype Command

    func execute(_ command: Command)
}
