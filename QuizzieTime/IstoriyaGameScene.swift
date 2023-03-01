//
//  IstoriyaGameScene.swift
//  QuizzieTime
//
//  Created by Andrei Dokuchaev on 01.03.2023.
//
/*
import SwiftUI

struct IstoriyaGameScene: View {
    
    @State var random = Int(arc4random()) % istoriyaQuiz1.count
    
    @State var i1 : Int = 0
    
    @State var score1 = 0
    
    @State private var showsDetailViewController: Bool = false
    
    @State private var showsDetailViewController1: Bool = false
    
    @State private var didTap1:String = ""
   
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
                    Button("< В меню") {
                        self.showsDetailViewController = true
                    }
                    .padding(.leading, 10.0)
                    .foregroundColor(.black)
                    .sheet(isPresented: $showsDetailViewController) {
                        NavigationMain()
                }
                    
                    Spacer()
                    
                }
                
                Spacer()
 //__________________________________________________

              if(self.i1 < 10 /*citateQuiz1.count*/) {
                  
                  
                  //image of the question
                 /* Image(citateQuiz1[self.i].img!)
                      .resizable()
                      .scaledToFit()
                      .padding(.horizontal)*/
                  
                  //text of the question
                  
                  VStack {
                  Text(istoriyaQuiz1[random].text!)
                      .font(.title2)
                      .fontWeight(.bold)
                      .foregroundColor(Color(red: 0.151, green: 0.015, blue: 0.01))
                      .multilineTextAlignment(.center)
                      .padding(/*@START_MENU_TOKEN@*/.horizontal, 10.0/*@END_MENU_TOKEN@*/)
                  
                 
                      
                  }
                  
                  VStack {
               
                  //answer 0
                  Button(action:{
                      
                      self.buttonAction(n: 0)
                      
                  },label: {
                      Text(istoriyaQuiz1[random].answer[0])
                  })
                      .padding(10)
                      .frame(width: 360.0)
                      .cornerRadius(10.0)
                      .foregroundColor(.white)
                      .background(.blue)
                  
                  Spacer()
                  
                  //answer 1
                  Button(action:{
                      
                      self.buttonAction(n: 1)
                     
                  },label: {
                      Text(istoriyaQuiz1[random].answer[1])
                  })
                      .padding(10)
                      .frame(width: 360.0)
                      .cornerRadius(10.0)
                      .foregroundColor(.white)
                      .background(.blue)
                  
                  Spacer()
                  
                  //answer 2
                  Button(action:{
                      
                      self.buttonAction(n: 2)
                      
                  },label: {
                      Text(istoriyaQuiz1[random].answer[2])
                  })
                      .padding(10)
                      .frame(width: 360.0)
                      .cornerRadius(10.0)
                      .foregroundColor(.white)
                      .background(.blue)
                  
                  Spacer()
                  
                  //answer 3
                  Button(action:{
                      
                      self.buttonAction(n: 3)
                    
                  },label: {
                      Text(istoriyaQuiz1[random].answer[3])
                  })
                      .padding(10)
                      .frame(width: 360.0)
                      .cornerRadius(10.0)
                      .foregroundColor(.white)
                      .background(.blue)
                  
                 
                      
                  }
                  
                  Text(self.didTap1)
                      .font(.title3)
                      .fontWeight(.bold)
                      .foregroundColor(Color(red: 0.151, green: 0.015, blue: 0.01))
                      .multilineTextAlignment(.center)
                      .padding(/*@START_MENU_TOKEN@*/.horizontal, 10.0/*@END_MENU_TOKEN@*/)
                  
                  Spacer()
                  
                  Button(action:{
                      
                      self.buttonAction1()
                    
                  },label: {
                      Text("Следующий вопрос")
                  })
                      .padding(10)
                      .frame(width: 300.0)
                      .cornerRadius(10.0)
                      .foregroundColor(.white)
                      .background(.green)
                  
                  Spacer()
                 
              }
                  
                  
              //after last question --> show final view with score
              else {
                  
                  FinalScoreIstoriya(score1 : self.score1)
              }
//__________________________________________________
                    
            }
            
        }
       
   }
    
    func buttonAction( n : Int) {
        //if answer is correct increment score
        if(istoriyaQuiz1[random].correct == n) {
            self.score1 = self.score1 + 1
            self.didTap1 = "Правильный ответ"
            
        } else {
            self.didTap1 = "Вы ошиблись"
            
        }
        //GO TO NEXT QUESTION
       // self.i = self.i + 1
       // self.random = Int(arc4random()) % citateQuiz1.count
        
    }

func buttonAction1() {
    //if answer is correct increment score
    
    //GO TO NEXT QUESTION
    self.i1 = self.i1 + 1
    self.random = Int(arc4random()) % istoriyaQuiz1.count
    self.didTap1 = ""
    
}
    
}

struct IstoriyaGameScene_Previews: PreviewProvider {
    static var previews: some View {
        IstoriyaGameScene()
    }
}
*/
