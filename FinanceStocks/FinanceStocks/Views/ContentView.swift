//
//  ContentView.swift
//  FinanceStocks
//
//  Created by Zeynep Demirtaş on 3.01.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var stocksVM: StocksViewModel = StocksViewModel()
    
    @State private var isShowingStockSearchSheet: Bool = false
    
    var body: some View {
        
        VStack {
            
            HeaderView(showSheet: $isShowingStockSearchSheet)
            
            PortfolioCard(stocksVM: stocksVM)
            
            WatchlistView(stocksVM: stocksVM)
            
            Spacer()
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .sheet(isPresented: $isShowingStockSearchSheet) {
            SearchStockView()
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
