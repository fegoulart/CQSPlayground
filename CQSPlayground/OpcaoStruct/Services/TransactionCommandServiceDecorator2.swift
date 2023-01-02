//
//  TransactionCommandServiceDecorator2.swift
//  CQSPlayground
//
//  Copyright © 2023 Alelo. All rights reserved.
//

import Foundation

public protocol CommandServiceProtocol {
    associatedtype Command

    func execute(_ command: Command)
}

public class TransactionCommandServiceDecorator2<Command>: CommandServiceProtocol {
    let decoratee: CommandService2<Command>

    public init(decoratee: CommandService2<Command>) {
        self.decoratee = decoratee
    }

    public func execute(_ command: Command) {
        // ... additional steps or transformations
        decoratee.execute(command)
        // ... additional steps or transformations
    }
}
