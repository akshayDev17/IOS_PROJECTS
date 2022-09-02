//
//  ContentView.swift
//  MyFirstIOSapp
//
//  Created by Akshay Prabhakant on 28/07/22.
//

import SwiftUI

func giveSampleView() -> some View {
    let txt = Text("Hello")
    return txt
}
//let x = "\(type(of: AnyView(Text("Hello").frame(width: 300))))"
//let x = "\(type(of: Text("Hello").font(.system(size: 9, weight: .light, design: .serif))))"
//let view_sample = giveSampleView()
//var y = giveSampleView()

//let x = "\(type(of: Text("Hello").frame(width: 300).font(.system(size: 9, weight: .light, design: .serif))))"
// However, if font modifier is called first followed by frame, then the final type is ModifiedContent<Content,modifier> , but if frame is called first followed by font modifier, then the final type is ModifiedContent<ModifiedContent<Text,_FrameLayout>,_EnvironmentKeyWritingModifier<Optional<Font>>>
// if this was just Text("Hello") , the type would be Text, but due to the modifier frame() being accessed, the return type is actually a ModifiedContent<self,T>
struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .frame(height: 300)
            CustomImageView()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Title")
                    .font(.title)
                    .foregroundColor(Color.black)
                //                    .padding()
                HStack{
                    Text("Heading-1").font(.subheadline).foregroundColor(.blue)
                    Spacer()
                    Text("Heading-2").font(.subheadline).foregroundColor(.red)
                }
            }.padding()
            Spacer()
            
        }
     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
