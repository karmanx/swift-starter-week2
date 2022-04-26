//
//  Lottary.swift
//  CodeStarterCamp_Week2
//
//  Created by Wonbi on 2022/04/22.
//

import Foundation

func makeWinnerNumber() -> Set<Int> {
    var winnerNumber: Set<Int> = []
    while winnerNumber.count != 6 {
        winnerNumber.insert(Int.random(in: 1...45))
    }
    return winnerNumber
}

func checkLottoWhat(number playerNumbers: Array<Int>) {
    let winnerNumbers: Set<Int> = makeWinnerNumber()
    let setPlayerNumbers: Set<Int> = Set<Int>(playerNumbers)
    let comparedNumbers: Set<Int> = winnerNumbers.intersection(setPlayerNumbers)
    print("이번 당첨 번호는 \(winnerNumbers.sorted()) 입니다.")
    
    if comparedNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        var sortedComparedNumbers: Array<Int> = comparedNumbers.sorted()
        print("축하합니다! 겹치는 번호는", terminator: " ")
        while sortedComparedNumbers.count > 1 {
            print(sortedComparedNumbers[0], terminator: ", ")
            sortedComparedNumbers.removeFirst()
        }
        print(sortedComparedNumbers[0], "입니다!", separator: " ")
    }
}
