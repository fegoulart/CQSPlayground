//
//  CommandService2.swift
//  CQSPlayground
//
//  Copyright © 2023 Alelo. All rights reserved.
//

import Foundation

public struct CommandService2<Command> {
    public private(set) var execute: (Command) -> Void
}
