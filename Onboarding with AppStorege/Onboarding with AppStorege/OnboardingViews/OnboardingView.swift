//
//  OnboardingView.swift
//  Onboarding with AppStorege
//
//  Created by Ricardo de Agostini Neto on 04/01/24.
//

import SwiftUI

struct OnboardingView: View {
    
    //0 - Welcome Screen
    //1 - Add name
    //2 - Add age
    
    
    @State var onboardingState: Int = 2
    
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    
    var body: some View {
        
        ZStack {
            
            ZStack {
                switch onboardingState {
                    case 0:
                        welcomeSection
                    case 1:
                        addNameSection
                    case 2:
                        addAgeSection
                    case 3:
                        addGenderSection
                    default:
                        Image("default")
                }
            }
            
            
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .background(.purple)
    }
    
    
}

#Preview {
    OnboardingView()
}

extension OnboardingView {
    private var bottomButton: some View {
        Text("Sign In")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {
                
            }
    }
    
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom)
            Text("This is the #1 app for finding your match online!")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
        
    }
    private var addNameSection: some View {
        
        VStack(spacing: 40) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here. ..", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
        
    }
    
    private var addAgeSection: some View {
        
        VStack(spacing: 40) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
        
    }
    
    private var addGenderSection: some View {
        
        VStack(spacing: 40) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(selection: $gender, 
                   label: Text("Select a gender")
                .font(.headline)
                .foregroundColor(.purple)
                .frame(height: 55)
                .background(Color.white)
                .cornerRadius(10),
                   
                   
                   content: {
                Text("Male").tag(1)
                Text("Female").tag(2)
                Text("Non-Binary")
                
            })
            .pickerStyle(MenuPickerStyle())

        }

        .padding(30)
        
    }
    
    
}



