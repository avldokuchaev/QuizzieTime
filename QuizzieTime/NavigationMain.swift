//
//  NavigationMain.swift
//  QuizzieTime
//
//  Created by Andrei Dokuchaev on 26.02.2023.
//

import SwiftUI

struct NavigationMain: View {
    
    @State private var showsDetailViewController: Bool = false
    @State private var showsDetailViewController1: Bool = false
    @State private var showsDetailViewController2: Bool = false
    
   
    
    private let imag = images.randomElement()
   
   struct BunnerButton: ButtonStyle {
       let img: Image
      
       func makeBody(configuration: Configuration) -> some View {
           configuration.label
           img
           .renderingMode(.original)
           .frame(width: 300, height: 38)
       }
       
   }
    
    var body: some View {
   
        ZStack {
            
            Image("backgroundQuizz")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .edgesIgnoringSafeArea(.all)
       
          VStack {
            
                Button("") {
                    UIApplication.shared.open(URL(string: imag!["url"]!)!)
                }
                .buttonStyle(BunnerButton(img: Image(imag!["image"]!)))
                
                HStack {
                    Button("На главную") {
                        self.showsDetailViewController = true
                    }
                    .background(.blue)
                    .padding()
                    .foregroundColor(.black)
                    .sheet(isPresented: $showsDetailViewController) {
                        ContentView()
                }
                    
                    Spacer()
                    
                }
                
                Spacer()
 //__________________________________________________

                Text(/*@START_MENU_TOKEN@*/"Навигация"/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(10)
                    .frame(width: 370.0)
                    .background(.green)
                
                Spacer()
                
            VStack {
                
                Button("Кто это сказал?") {
                    showsDetailViewController1.toggle()
                }
                .padding(10)
                .frame(width: 360.0)
                .cornerRadius(10.0)
                .foregroundColor(.white)
                .background(.blue)
                .sheet(isPresented: $showsDetailViewController1) {
                    CitateGameHome()
                }
                
                Spacer()
                
               Button("История") {
                    showsDetailViewController2.toggle()
                }
                .padding(10)
                .frame(width: 360.0)
                .cornerRadius(10.0)
                .foregroundColor(.white)
                .background(.blue)
                .sheet(isPresented: $showsDetailViewController2) {
                    IstoriyaGameHome()
                }
                
                Spacer()
                
                Image("KonfutsijNavigationMain")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Spacer()
                    
            }
//__________________________________________________
                    
            }
            
        }
       
   }
    
}

struct NavigationMain_Previews: PreviewProvider {
    static var previews: some View {
        NavigationMain()
    }
}
