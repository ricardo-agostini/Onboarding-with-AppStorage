//
//  IntroView.swift
//  Onboarding with AppStorege
//
//  Created by Ricardo de Agostini Neto on 04/01/24.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    
    var body: some View {

        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [Color.purple, Color.blue]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
                    .ignoresSafeArea()
            
            
            
            if currentUserSignedIn {
                ProfileView()
            }
            else {
                OnboardingView()
            }
        }
        
        
    }
}

#Preview {
    IntroView()
}
