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
            //MARK: - HEADER
            Spacer()
            VStack(spacing: 0) {
                Text("Share.")
                    .font(.system(size: 60))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                Text("""
                It's not how much we give
                but how much love we put into giving.
                """)
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 10)
            }
            //MARK: - CENTER
            
            //MARK: - FOOTER
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
