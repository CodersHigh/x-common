import Foundation

class Score {
    var win = 0
    var draw = 0
    var lose = 0
    var matches = 0
    var point: Int {
        return 3 * win + draw
    }
}

class Tournament {
    func tally(_ raw: String) -> String {
        var scores: [String: Score] = [:]
        let matches = raw.components(separatedBy: "\n").map({$0.components(separatedBy: ";")})
        for match in matches {
            if match.count != 3 {
                continue
            }
            let team1 = match[0]
            let team2 = match[1]
            let status = match[2]
            if status != "win" && status != "loss" && status != "draw" {
                continue
            }
            if !scores.contains(where: {$0.key == team1}) {
                scores[team1] = Score()
            }
            if !scores.contains(where: {$0.key == team2}) {
                scores[team2] = Score()
            }
            switch status {
            case "win":
                scores[team1]!.win += 1
                scores[team2]!.lose += 1
            case "loss":
                scores[team1]!.lose += 1
                scores[team2]!.win += 1
            default:
                scores[team1]!.draw += 1
                scores[team2]!.draw += 1
            }
            scores[team1]!.matches += 1
            scores[team2]!.matches += 1
        }
        let teams = scores.keys.sorted { (team1, team2) -> Bool in
            let result = scores[team1]!.point == scores[team2]!.point
            if result {
                return team1 < team2
            } else {
                return scores[team1]!.point > scores[team2]!.point
            }
        }
        var result: [String] = ["Team                           | MP |  W |  D |  L |  P"]
        let count = "Team                           ".characters.count
        for team in teams {
            let score = scores[team]!
            var teamName = team
            for _ in teamName.characters.count..<count {
                teamName += " "
            }
            result.append("\(teamName)|  \(score.matches) |  \(score.win) |  \(score.draw) |  \(score.lose) |  \(score.point)")
        }
        return result.joined(separator: "\n")
    }
}
