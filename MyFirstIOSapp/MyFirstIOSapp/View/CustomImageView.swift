//
//  CustomImageView.swift
//  MyFirstIOSapp
//
//  Created by Akshay Prabhakant on 14/08/22.
//

import SwiftUI

struct CustomImageView: View {
    var body: some View {
        Image("swift-og")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .frame(width: 200, height: 200)
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 4)
        
    }
}

struct CustomImageView_Previews: PreviewProvider {
    static var previews: some View {
        CustomImageView()
    }
}
