//
//  History.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 19/08/2022.
//

import SwiftUI

struct History: View {
    let data = [
        HistoryData(dateTime: "18/06/2015", score: 19),
        HistoryData(dateTime: "18/06/2016", score: 13),
        HistoryData(dateTime: "18/06/2017", score: 20),
        HistoryData(dateTime: "18/06/2018", score: 30),
        HistoryData(dateTime: "18/06/2019", score: 25),
        HistoryData(dateTime: "18/06/2020", score: 15),
        HistoryData(dateTime: "18/06/2021", score: 21),
        HistoryData(dateTime: "18/06/2022", score: 9),
    ]

    var body: some View {
            let sortedData = data.sorted {
                $0.score > $1.score
            }
            ForEach(sortedData){
                history in
                HistoryRow(historyData: history)
            }
        
    }
}

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}
