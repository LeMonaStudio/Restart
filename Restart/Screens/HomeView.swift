//
//  HomeView.swift
//  Restart
//
//  Created by Musa Lawrence on 5/2/23.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            
            VStack(spacing: 20){
                
                //MARK: - HEADER
                Spacer()
                
                ZStack {
                    CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                    Image("character-2")
                        .imageModifier()
                        .padding()
                        .offset(y: isAnimating ? 35 : -35)
                        .animation(
                            Animation
                                .easeInOut(duration: 4)
                                .repeatForever(),
                            value: isAnimating
                        )
                }
                
                //MARK: - CENTER
                
                Text("""
                The time that leads to mastery is
                dependent on the intensity of our focus.
                """)
                .font(.title3)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding(.vertical, 20)
                
                //MARK: - FOOTER
                Spacer()
                
                Button(action: {
                    withAnimation {
                        isOnboardingViewActive = true
                    }
                }){
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .iconModifier()
                    Text("Restart")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.heavy)
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
                
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimating = true
            })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
