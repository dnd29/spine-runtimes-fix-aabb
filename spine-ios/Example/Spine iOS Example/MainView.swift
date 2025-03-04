import SwiftUI
import Spine

struct MainView: View {
    var body: some View {
        List {
            Section {
                NavigationLink("Simple Animation") {
                    SimpleAnimation()
                }
                NavigationLink("Play/Pause") {
                    PlayPauseAnimation()
                }
                NavigationLink("Animation State Listener") {
                    AnimationStateEvents()
                }
                NavigationLink("Debug Rendering") {
                    DebugRendering()
                }
                NavigationLink("Dress Up") {
                    DressUp()
                }
                NavigationLink("IK Following") {
                    IKFollowing()
                }
                NavigationLink("Physics") {
                    Physics()
                }
                NavigationLink("Disable Rendering") {
                    DisableRendering()
                }
            } header: {
                Text("Swift + SwiftUI")
            }
            Section {
                NavigationLink("Simple Animation") {
                    SimpleAnimationViewControllerRepresentable()
                        .navigationTitle("Simple Animation")
                        .navigationBarTitleDisplayMode(.inline)
                }
            } header: {
                Text("ObjC + UIKit")
            } footer: {
                HStack {
                    Spacer()
                    Text("Spine \(Spine.version)")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
        }
        .navigationTitle("Spine Examples")
    }
}

#Preview {
    NavigationView {
        MainView()
    }
}
