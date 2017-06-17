import Foundation

class Rank: Comparable {
    let raw: String
    var value: Int
    init(_ raw: String) {
        self.raw = raw
        self.value = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"].index(of: raw)!
    }
    static func ==(rankA: Rank, rankB: Rank) -> Bool {
        return rankA.value == rankB.value
    }
    static func <(rankA: Rank, rankB: Rank) -> Bool {
        return rankA.value < rankB.value
    }
}

extension Rank: Hashable {
    var hashValue: Int {
        return self.value
    }
}

class PokerHand: Comparable {
    let hand: String
    var cards: [(rank: Rank, suit: String)] = []
    var ranks: [Rank] = []
    var firstTwo: Rank?
    var secondTwo: Rank?
    var firstThree: Rank?
    var firstFour: Rank?
    var maxRank: Rank?
    var twoNum: Int = 0
    var threeNum: Int = 0
    var fourNum: Int = 0
    var isStraight: Bool = false
    var straightMaxValue: Int?
    var isFlush: Bool = false
    var flushSuit: String = ""
    var bestTwoSuit = 0
    var bestThreeSuit = 0
    var bestBest: [Int] = []
    var level: Int = 0
    static func scoreForSuit(_ suit: String) -> Int {
        return 4 - ["♢", "♤", "♧", "♡"].index(of: suit)!
    }
    init?(_ hand: String) {
        let cards = hand.components(separatedBy: " ")
        if cards.count != 5 {
            return nil
        }
        for card in cards {
            let suit = card.substring(from: card.index(card.endIndex, offsetBy: -1))
            let rank = card.substring(to: card.index(card.endIndex, offsetBy: -1))
            if suit != "♢" && suit != "♤" && suit != "♡" && suit != "♧" {
                return nil
            }
            if ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"].contains(where: {$0 == rank}) {
                self.cards.append((Rank(rank), suit))
                self.ranks.append(Rank(rank))
            } else {
                return nil
            }
        }
        self.hand = hand
        self.ranks.sort()
        self.initScore()
    }
    func findBestSuit(_ rank: Rank) -> Int {
        var bestSuit = 0
        for (rank1, suit) in cards {
            if rank1 == rank {
                if PokerHand.scoreForSuit(suit) > bestSuit {
                    bestSuit = PokerHand.scoreForSuit(suit)
                }
            }
        }
        return bestSuit
    }
    func initScore() {
        var counter: [Rank: Int] = [:]
        for rank in ranks {
            if counter[rank] != nil {
                counter[rank] = 1 + counter[rank]!
            } else {
                counter[rank] = 1
            }
        }
        for (rank, count) in counter {
            if count == 2 {
                if twoNum == 0 {
                    firstTwo = rank
                    bestTwoSuit = self.findBestSuit(rank)
                } else {
                    if rank > firstTwo! {
                        secondTwo = firstTwo
                        firstTwo = rank
                        bestTwoSuit = self.findBestSuit(rank)
                    } else {
                        secondTwo = rank
                    }
                }
                twoNum += 1
            } else if count == 3 {
                firstThree = rank
                bestThreeSuit = self.findBestSuit(rank)
                threeNum += 1
            } else if count == 4 {
                firstFour = rank
                fourNum += 1
            } else {
                bestBest.append(rank.value)
                if maxRank == nil {
                    maxRank = rank
                } else {
                    if rank > maxRank! {
                        maxRank = rank
                    }
                }
            }
        }
        bestBest.sort(by: >)
        flushSuit = cards[0].suit
        isFlush = true
        for card in cards {
            if flushSuit != card.suit {
                isFlush = false
                break
            }
        }
        var ranksToTest: [Rank] = []
        for rank in ranks {
            let newRank = Rank(rank.raw)
            if ranks.contains(Rank("A")) && ranks.contains(Rank("2")) {
                if newRank.value >= 9 {
                    newRank.value = newRank.value - 13
                }
            }
            ranksToTest.append(newRank)
        }
        ranksToTest.sort()
        var startRankValue = ranksToTest[0].value, preRankValue = startRankValue
        isStraight = true
        straightMaxValue = startRankValue
        for i in 1..<ranksToTest.count {
            let rank = ranksToTest[i], rankValue = rank.value
            if preRankValue == 12 {
                if rankValue != 0 {
                    isStraight = false
                    break
                }
            } else {
                if rankValue != preRankValue + 1 {
                    isStraight = false
                    break
                }
            }
            preRankValue = rankValue
            if rankValue > straightMaxValue! {
                straightMaxValue = rankValue
            }
        }
        if fourNum == 0 {
            if threeNum == 0 {
                if twoNum == 0 {
                    level = 0
                    if isStraight {
                        level = 4
                        if isFlush {
                            level = 8
                        }
                    }
                } else if twoNum == 1 {
                    level = 1
                } else if twoNum == 2 {
                    level = 2
                }
                if level < 5 && isFlush {
                    level = 5
                }
            } else {
                if twoNum == 0 {
                    level = 3
                    if isFlush {
                        level = 5
                    }
                } else {
                    level = 6
                }
            }
        } else {
            level = 7
        }
    }
    static func ==(handA: PokerHand, handB: PokerHand) -> Bool {
        for i in 0..<5 {
            if handA.cards[i].rank != handB.cards[i].rank || handA.cards[i].suit != handB.cards[i].suit {
                return false
            }
        }
        return true
    }
    static func <(handA: PokerHand, handB: PokerHand) -> Bool {
        if handA.level != handB.level {
            return handA.level < handB.level
        }
        switch handA.level {
        case 0:
            break
        case 1:
            var compareBestBest = true
            for i in 0..<3 {
                if handA.bestBest[i] > handB.bestBest[i] {
                    compareBestBest = false
                }
            }
            let partResult = handA.firstTwo! < handB.firstTwo!
            return partResult || compareBestBest
        case 2:
            return (handA.firstTwo! < handB.firstTwo!) || (handA.firstTwo! == handB.firstTwo! && handA.secondTwo! < handB.secondTwo!) || (handA.bestTwoSuit < handB.bestTwoSuit)
        case 3:
            return handA.firstThree! < handB.firstThree!
        case 4:
            return handA.straightMaxValue! < handB.straightMaxValue!
        case 5:
            return PokerHand.scoreForSuit(handA.flushSuit) < PokerHand.scoreForSuit(handB.flushSuit)
        case 6:
            return (handA.firstThree! < handB.firstThree!) || (handA.firstThree! == handB.firstThree! && handA.firstTwo! == handB.firstTwo!)
        case 8:
            return handA.straightMaxValue! < handB.straightMaxValue! || PokerHand.scoreForSuit(handA.flushSuit) < PokerHand.scoreForSuit(handB.flushSuit)
        default:
            break
        }
        if handA.maxRank != nil && handB.maxRank != nil {
            return handA.maxRank! < handB.maxRank!
        }
        return true
    }
}

class Poker {
    static func bestHand(_ hands: [String]) -> String {
        var results = hands.map({PokerHand($0)!})
        results.sort()
        return results.last!.hand
    }
}
