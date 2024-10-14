import SwiftUI
struct ContentView: View {
    struct onibus: Identifiable{
        var id: Int
        var nome: String
    }
    var arraybus = [
        onibus(id: 1,nome: "Ônibus A"),
        onibus(id: 2,nome: "Ônibus B"),
        onibus(id: 3,nome: "Ônibus C"),
        onibus(id: 4,nome: "Ônibus D"),

        
    ]
    
    struct sheetview: View {
        @State var nomebus: String
        @Environment (\.dismiss) var dismiss
        var body: some View {
                ScrollView{
                    VStack{
                        Text(nomebus)
                            .font(.largeTitle)
                            .bold()
                            .padding()
                            .foregroundStyle(.white)
                        if (nomebus == "Ônibus A"){
                            VStack{
                                HStack{
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(.blue)
                                            .frame(width: 100,height: 40)
                                        Text("HORÁRIOS")
                                    }.padding()
                                    Spacer()
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(.green)
                                            .frame(width: 200,height: 40)
                                            .padding()
                                        Text("PONTOS DE PARADAS")
                                    }
                                }
                                Rectangle()
                                    .frame(height: 1)
                                    .foregroundStyle(.white)
                            }
                            HStack{
                                Text("6:14")
                                    .foregroundStyle(.white)
                                    .padding()
                                Spacer()
                                Text("Univasf Campus Juazeiro")
                                    .foregroundStyle(.white)
                                    .padding()
                            }.padding()
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.white)
                            HStack{
                                Text("6:19")
                                    .foregroundStyle(.white)
                                    .padding()
                                Spacer()
                                Text("Terminal de Juazeiro")
                                    .foregroundStyle(.white)
                                    .padding()
                            }.padding()
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.white)
                            HStack{
                                Text("6:23")
                                    .foregroundStyle(.white)
                                    .padding()
                                Spacer()
                                Text("Verdão (Juazeiro)")
                                    .foregroundStyle(.white)
                                    .padding()
                            }.padding()
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.white)
                            HStack{
                                Text("6:27")
                                    .foregroundStyle(.white)
                                    .padding()
                                Spacer()
                                Text("Univasf Campus Petrolina")
                                    .foregroundStyle(.white)
                                    .padding()
                            }.padding()
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.white)
                            HStack{
                                Text("6:33")
                                    .foregroundStyle(.white)
                                    .padding()
                                Spacer()
                                Text("Feira da Cohab Massangano")
                                    .foregroundStyle(.white)
                                    .padding()
                            }.padding()
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.white)
                            HStack{
                                Text("6:35")
                                    .foregroundStyle(.white)
                                    .padding()
                                Spacer()
                                Text("Estrada do bairro Quati")
                                    .foregroundStyle(.white)
                                    .padding()
                            }.padding()
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.white)
                            HStack{
                                Text("6:40")
                                    .foregroundStyle(.white)
                                    .padding()
                                Spacer()
                                Text("Univasf Campus Ciências Agrárias")
                                    .foregroundStyle(.white)
                                    .padding()
                            }.padding()
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.white)
                            HStack{
                                Text("9:10")
                                    .foregroundStyle(.white)
                                    .padding()
                                Spacer()
                                Text("Univasf Campus Juazeiro")
                                    .foregroundStyle(.white)
                                    .padding()
                            }.padding()
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.white)
                            HStack{
                                Text("9:12")
                                    .foregroundStyle(.white)
                                    .padding()
                                Spacer()
                                Text("Terminal Juazeiro")
                                    .foregroundStyle(.white)
                                    .padding()
                            }.padding()
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.white)
                            HStack{
                                Text("9:14")
                                    .foregroundStyle(.white)
                                    .padding()
                                Spacer()
                                Text("Rodoviaria Petrolina")
                                    .foregroundStyle(.white)
                                    .padding()
                            }.padding()
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.white)
                            HStack{
                                Text("9:18")
                                    .foregroundStyle(.white)
                                    .padding()
                                Spacer()
                                Text("Caixa D'água da Compesa")
                                    .foregroundStyle(.white)
                                    .padding()
                            }.padding()
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.white)
                            HStack{
                                Text("9:20")
                                    .foregroundStyle(.white)
                                    .padding()
                                Spacer()
                                Text("Univasf Campus Petrolina")
                                    .foregroundStyle(.white)
                                    .padding()
                            }.padding()
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.white)
                            HStack{
                                Text("9:25")
                                    .foregroundStyle(.white)
                                    .padding()
                                Spacer()
                                Text("G Barbosa Petrolina")
                                    .foregroundStyle(.white)
                                    .padding()
                            }.padding()
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.white)
                            HStack{
                                Text("9:45")
                                    .foregroundStyle(.white)
                                    .padding()
                                Spacer()
                                Text("Univasf Campus Ciências Agrárias")
                                    .foregroundStyle(.white)
                                    .padding()
                            }.padding()
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.white)
                        }else{
                            if (nomebus == "Ônibus B"){
                                VStack{
                                    HStack{
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 10)
                                                .foregroundColor(.blue)
                                                .frame(width: 100,height: 40)
                                            Text("HORÁRIOS")
                                        }.padding()
                                        Spacer()
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 10)
                                                .foregroundColor(.green)
                                                .frame(width: 200,height: 40)
                                                .padding()
                                            Text("PONTOS DE PARADAS")
                                        }
                                    }
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundStyle(.white)
                                    HStack{
                                        Text("6:40")
                                            .foregroundStyle(.white)
                                            .padding()
                                        Spacer()
                                        Text("Univasf Campus Juazeiro")
                                            .foregroundStyle(.white)
                                            .padding()
                                    }.padding()
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundStyle(.white)
                                   
                                    HStack{
                                        Text("6:49")
                                            .foregroundStyle(.white)
                                            .padding()
                                        Spacer()
                                        Text("Feira da Cohab Massangano")
                                            .foregroundStyle(.white)
                                            .padding()
                                    }.padding()
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundStyle(.white)
                                    HStack{
                                        Text("6:50")
                                            .foregroundStyle(.white)
                                            .padding()
                                        Spacer()
                                        Text("Entrada do Bairro Quati")
                                            .foregroundStyle(.white)
                                            .padding()
                                    }.padding()
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundStyle(.white)
                                    HStack{
                                        Text("6:55")
                                            .foregroundStyle(.white)
                                            .padding()
                                        Spacer()
                                        Text("Univasf Campus Ciências Agrárias")
                                            .foregroundStyle(.white)
                                            .padding()
                                    }.padding()
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundStyle(.white)
                                    HStack{
                                        Text("6:57")
                                            .foregroundStyle(.white)
                                            .padding()
                                        Spacer()
                                        Text("Hospita Veterinário")
                                            .foregroundStyle(.white)
                                            .padding()
                                    }.padding()
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundStyle(.white)
                                    HStack{
                                        Text("7:00")
                                            .foregroundStyle(.white)
                                            .padding()
                                        Spacer()
                                        Text("Bloco de Salas CCA")
                                            .foregroundStyle(.white)
                                            .padding()
                                    }.padding()
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundStyle(.white)
                                    HStack{
                                        Text("15:10")
                                            .foregroundStyle(.white)
                                            .padding()
                                        Spacer()
                                        Text("Univasf Campus Ciências Agrárias")
                                            .foregroundStyle(.white)
                                            .padding()
                                    }.padding()
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundStyle(.white)
                                    HStack{
                                        Text("15:23")
                                            .foregroundStyle(.white)
                                            .padding()
                                        Spacer()
                                        Text("Entrada N2")
                                            .foregroundStyle(.white)
                                            .padding()
                                    }.padding()
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundStyle(.white)
                                    HStack{
                                        Text("15:36")
                                            .foregroundStyle(.white)
                                            .padding()
                                        Spacer()
                                        Text("Feira da Cohab Massangano")
                                            .foregroundStyle(.white)
                                            .padding()
                                    }.padding()
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundStyle(.white)
                                    HStack{
                                        Text("15:40")
                                            .foregroundStyle(.white)
                                            .padding()
                                        Spacer()
                                        Text("Univasf Campus Juazeiro")
                                            .foregroundStyle(.white)
                                            .padding()
                                    }.padding()
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundStyle(.white)
                                }
                            }
                        }
                }
            }
        }
    }
    
    @State private var selectedBus: onibus?
    var body: some View {
            ScrollView{
                VStack{
                    Text("Itinerários")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                    
                    ForEach(arraybus) { arraybu in
                        HStack{
                            ZStack{
                                Circle()
                                    .foregroundStyle(.gray)
                                    .frame(height: 50)
                                Image(systemName: "bus")
                                    .foregroundStyle(.white)
                                    .clipShape(Circle())
                                    .foregroundStyle(.yellow)
                            }
                            Text(arraybu.nome)
                                .foregroundStyle(.white)
                            Spacer()
                            
                        }.onTapGesture {
                            selectedBus = arraybu
                            
                        }
                        .sheet(item: $selectedBus) { bus in
                            sheetview(nomebus: bus.nome)
                        }
                        
                        
                        .padding()
                        
                        
                    }
                    Spacer()
                
                
                
                
                
                
                
            }
        }
    }
}

#Preview {
    ContentView()
}
