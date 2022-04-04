//
//  TextToggleButton.swift
//  Wrappers
//
//  Created by Fernando's Mac on 04/04/22.
//

import SwiftUI

struct TextToggleButton: View {
    
    @Binding var showDetails: Bool
    
    var body: some View {
        Button(action: {self.showDetails.toggle()}) {
            Text(self.showDetails ? "Ocultar nombres" : "Mostrar nombres")
        }
    }
}

