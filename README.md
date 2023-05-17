# Restart

Restart is a simple SwiftUI app with two screens created as part of a SwiftUI Master class. 

### What I learnt
1. How to stack views: ZStack for overlaying subviews , VStack for placing subviews in vertically and the HStack for horizontal stacking of
subviews.
2. How to use subviews such as Image, Texts, Capsules, Button and also creating custom views using chapes
3. Using modifiers such as padding, offset, font modiefiers, opacity, color modifiers etc
4. Implementing animations in SwiftUI 
5. Playing Audio files using the AVFoundation library
6. Implementing gestures on UI components
7. Adding state variables and making UI changes with state.
8. And importantly understanding the basic structure of a SwiftUI App.

### The UI
The app starts with an Onboarding Screen. The Onboarding screen has a Text, an Image overlaying a custom view which is a group of circles
and finallly a custom switch with drag gesture implemented. When the custom button is dragged the app's UI updates to the Home Screen. Also,
the Home Screen has a Text at the top, an Image overlaying the custom circle view and a Restart button at the buttom of the screen to 
navigate user back to the Onboarding screen.

The navigation from the Onboarding Screen to the Home Screen and back, as a result of state change, plays an audio each time to improve 
user experience. 

### Library Used
No external library was imported into the project. The only libraries imported into the project was, importantly the SwiftUI library as 
this is a SwiftUI project, and the AVFoundation library which enables the playing of sounds as user navigates between screens.

### Code Snippet

The custom circle view
```swift
import SwiftUI

struct CircleGroupView : View {
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260,alignment: .center)
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260,alignment: .center)
        }
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeIn(duration: 1), value: isAnimating)
        .onAppear {
            isAnimating = true
        }
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
        }
    }
}
```
