//
//  CalendarGhostButtonScheme.swift
//  AdmiralCalendarSwiftUI
//
//  Created on 12.04.2021.
//

import AdmiralCore
import AdmiralTheme
import SwiftUI

/**
 CalendarGhostButtonScheme - the visual scheme of PageControlView.
 You can create a by specifying the following parameters in init:
 - CalendarGhostButtonScheme() - Initialize default CalendarGhostButtonScheme with default themezation
 # Example to create CalendarGhostButtonScheme:
 ```
let scheme = CalendarGhostButtonScheme()
scheme.font = theme.fonts.body2
scheme.textColor.set(parameter: theme.colors.textAccentPressed, for: .normal)
 ```
 */
@available(iOS 14.0.0, *)
public struct CalendarGhostButtonScheme: AppThemeScheme {

    // MARK: - Public Properties

    /// The font color
    public var font: AFont

    /// The text color
    public var textColor = ControlParameter<AColor>()

    // MARK: - Initializer

    public init(theme: AppTheme = .default) {
        let alpha = theme.colors.disabledAlpha
        font = theme.fonts.body1
        textColor.set(parameter: theme.colors.textAccent, for: .normal)
        textColor.set(parameter: theme.colors.textAccentPressed, for: .highlighted)
        textColor.set(parameter: theme.colors.textAccent.withAlpha(alpha), for: .disabled)
    }

}
