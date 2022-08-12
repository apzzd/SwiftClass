import Foundation

// Card Game Project
// - enums ✓
// - functions ✓
// - loops ✓
// - classes ✓

enum Suit: Comparable { // create new data type Suit
    case Spade
    case Heart
    case Diamond
    case Club
}

let allSuits = [Suit.Heart, Suit.Club, Suit.Diamond, Suit.Spade]

enum Rank: Comparable { // create new data type rank
    case Ace
    case Two
    case Three
    case Four
    case Five
    case Six
    case Seven
    case Eight
    case Nine
    case Ten
    case Jack
    case Queen
    case King
}

let allRanks = [Rank.Ace, Rank.Two, Rank.Three, Rank.Four, Rank.Five, Rank.Six, Rank.Seven, Rank.Eight, Rank.Nine, Rank.Ten, Rank.Jack, Rank.Queen, Rank.King]

class Card { // define a card
    var rank: Rank = Rank.Ace
    var suit: Suit = Suit.Spade
    
    static func ==(lhs: Card, rhs: Card) -> Bool { // compare cards: ==
        if (lhs.rank == rhs.rank) && (lhs.suit == rhs.suit) {
            return true
        } else {
            return false
        }
    }
    
    static func >(lhs: Card, rhs: Card) -> Bool { // compare cards >
        if (lhs.rank > rhs.rank) {
            return true
        } else if (lhs.rank < rhs.rank) {
            return false
        } else {
            if (lhs.suit > rhs.suit) {
                return true
            } else {
                return false
            }
        }
    }
    
    static func <(lhs: Card, rhs: Card) -> Bool { // compare cards <
        if (lhs.rank > rhs.rank) {
            return true
        } else if (lhs.rank < rhs.rank) {
            return false
        } else {
            if (lhs.suit > rhs.suit) {
                return true
            } else {
                return false
            }
        }
    }
}

class Hand { // define a hand
    var cards: [Card] = []
}

class Player { // define a player
    var name: String = ""
    var hand: Hand = Hand()
}

func newDeck() -> Hand {
    let deck = Hand() // make a full deck

    for rank in allRanks {
        for suit in allSuits {
            let card = Card()
            card.suit = suit
            card.rank = rank
            deck.cards += [card]
        }
    } //
    
    return deck // return it
}

func printHand(hand: Hand) {
    for card in hand.cards {
        print("\(card.rank) of \(card.suit)s")
    }
    print("Length: \(hand.cards.count)")
}

func war(p1: Player, p2: Player, suspense: Bool) { // make a func for a card game with two players. this will be the independent challenge for the swift class
    print("- WAR -")
    print("Player 1: \(p1.name)")
    print("Player 2: \(p2.name)")
    
    print("\n\n---")
    
    let deck = newDeck()
    deck.cards.shuffle() // shuffled deck of cards
    
    p1.hand.cards += deck.cards[0..<(deck.cards.count / 2)]
    p2.hand.cards += deck.cards[(deck.cards.count / 2)..<deck.cards.count] // give half the shuffled deck to one player, the other half to the other player.
    
    var p1pointage: Int = 0
    var p2pointage: Int = 0
    
    for i in 0...(p1.hand.cards.count-1) {
        let card1 = p1.hand.cards[i]
        let card2 = p2.hand.cards[i]
        
        if card1 > card2 {
            p1pointage += 1
            if suspense { sleep(1) }
            print("\(card1.rank) of \(card1.suit)s vs. \(card2.rank) of \(card2.suit)s | \(p1.name) won!")
        } else if card2 > card1 {
            p2pointage += 1
            if suspense { sleep(1) }
            print("\(card1.rank) of \(card1.suit)s vs. \(card2.rank) of \(card2.suit)s | \(p2.name) won!")
        }
    }
    
    print("\n\n- Point Totals: -")
    print("\(p1.name): \(p1pointage)")
    print("\(p2.name): \(p2pointage)")
    print("\n\n")

    
}



let ada = Player()
ada.name = "Ada"

let thomas = Player()
thomas.name = "Thomas"

war(p1: ada, p2: thomas, suspense: true)
