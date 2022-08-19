//
//  HistoryRow.swift
//  Tic tac toe
//
//  Created by Bui Quang An on 19/08/2022.
//

import SwiftUI

struct HistoryRow: View {
    var historyData: HistoryData
    var body: some View {
        HStack{
            Text("\(historyData.dateTime)")
            Spacer()
            Text("\(historyData.score)")
        }.padding(.vertical)
    }
}
