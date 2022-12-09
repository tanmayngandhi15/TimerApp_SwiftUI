//
//  UISubhashit.swift
//  TimerTest
//
//  Created by Samir Raut on 29/04/23.
//

import SwiftUI

struct UISubhashit: View {
    @State private var isOn = true
    
    var body: some View {
        VStack {
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 70))
                .foregroundColor(isOn ? .green : .red)
                .padding(.bottom, 50)
             // .opacity(isOn ? 1 : 0)
            
            HStack {
                Text(isOn ? "ON" : "OFF")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(isOn ? .green : .red)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity)
                    .onTapGesture {
                        self.isOn.toggle()
                    }
                
                Spacer()
                
                Text(isOn ? "OFF" : "ON")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(isOn ? .red : .green)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity)
                    .onTapGesture {
                        self.isOn.toggle()
                    }
            }
            .padding(.top, 50)
            .padding(.horizontal, 30)
            
            // Add the horizontal scrollable grid of images
           // ImageGridView()
           
            
            Button(action: {
                self.isOn.toggle()
            }, label: {
                Text("Selected")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 50)
                    .padding(.vertical, 10)
                    .background(isOn ? Color.green : Color.gray)
                    .cornerRadius(10)
            })
            .padding(.top, 50)
             
          
        }
    }
}

/*
struct ImageGridView: View {
    let images = (1...30).map { "image\($0)" }
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [GridItem(.fixed(100))], spacing: 20) {
                ForEach(images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}
 */

struct UISubhashit_Previews: PreviewProvider {
    static var previews: some View {
        UISubhashit()
    }
}
