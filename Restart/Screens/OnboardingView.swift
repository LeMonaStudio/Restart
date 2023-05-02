//
//  OnboardingView.swift
//  Restart
//
//  Created by Musa Lawrence on 5/2/23.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        
        ZStack {
            Color("ColorBlue").ignoresSafeArea()
            
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
