//
//  WatchlistView.swift
//  FinanceStocks
//
//  Created by Zeynep Demirtaş on 3.01.2023.
//

import SwiftUI

struct WatchlistView: View {
    @StateObject var stocksVM: StocksViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("Watchlist")
                    .font(.title)
                    .bold()
                    .foregroundColor(.darkBlue)
                Spacer()
            }
            
            // stock cards
            ScrollView {
                VStack {
                    
                    ForEach(stocksVM.stocks, id: \.self) { stock in
                       StockCard(stockModel: stock)
                    }
                    
                }
            }
            .padding(3)
            
        }
    }
}

//struct WatchlistView_Previews: PreviewProvider {
//    static var previews: some View {
//        WatchlistView()
//    }
//}
