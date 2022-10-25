//
//  PeopleDetailView.swift
//  PeopleSwiftUI
//
//  Created by Nova on 17/09/2022.
//

import SwiftUI

struct PeopleDetailView: View {
    
    var people: People
    
    var body: some View {
        
        ZStack{
//            Color.yellow
            LinearGradient(colors: [.gray, .yellow],
                                   startPoint: .top,
                                   endPoint: .center)
//            AngularGradient(colors: [.red, .yellow, .green, .purple, .pink],
//                                       center: .center,
//                                       startAngle: .degrees(90),
//                                       endAngle: .degrees(360))
            VStack(spacing: 20) {
                Image(people.imageName)
                    .resizable()
                    .frame(width: 400, height: 400)
    //                .clipShape(Circle())
                Text(people.name)
                    .font(.largeTitle)
                Text("\(people.age) yo")
                    .font(.title3)
                    .foregroundColor(.gray)
            }.navigationBarTitle("\(people.name)", displayMode: .inline)
        }.ignoresSafeArea()
    }
}

struct PeopleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleDetailView(people: People(imageName: "people0", name: "Nina", age: 11))
    }
}
