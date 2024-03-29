import Foundation
import SwiftUI

// Die Struktur, die ein Flugobjekt repräsentiert.
struct Flights: Identifiable {
    // Eine eindeutige ID, die automatisch generiert wird (UUID).
    var id = UUID()
    // Der Name des Fluges.
    let name: String
    // Der Name des Bildes, das den Flug repräsentiert.
    let image: String
    // Eine Beschreibung des Fluges.
    let description: String
    // Der Preis des Fluges.
    let price: Int
    // Die Dauer des Fluges.
    let duration: String
    // Die Abflugzeit des Fluges.
    let departureTime: String
    // Die Ankunftszeit des Fluges.
    let arrivalTime: String
    // Der Abflugort des Fluges.
    let origin: String
    // Das Ziel des Fluges.
    let destination: String
    // Die Anzahl der Zwischenstopps.
    let stops: Int
    // Der Airline-Code des Fluges.
    let airlineCode: String
    // Die Gepäckregelung des Fluges.
    let baggageAllowance: String
    // Die Verfügbarkeit von WLAN während des Fluges.
    let wifiAvailability: Bool
    // Die Verfügbarkeit von In-Flight-Entertainment während des Fluges.
    let inFlightEntertainment: Bool
    // Gibt an, ob eine Mahlzeit während des Fluges enthalten ist.
    let mealIncluded: Bool
}


// Erstellen weiterer Instanzen der Flights-Struct und Speichern in Variablen
private var flight1 = Flights(name: "Ethiopian Airlines", image: "Ethiopian Airlines",description: "International Airline We fly with us 365 Days of the Year", price: 1140, duration: "6h 30m", departureTime: "12:30 PM", arrivalTime: "6:00 PM", origin: "ADD", destination: "FRA", stops: 0, airlineCode: "ET", baggageAllowance: "2 bags, 23kg each", wifiAvailability: true, inFlightEntertainment: true, mealIncluded: true)

private var flight2 = Flights(name: "Lufthansa Airlines", image: "Lufthansa",description: "Lufthansa A German Airlines Thank You when you fly with us",price: 599, duration: "2h 15m", departureTime: "8:45 AM", arrivalTime: "11:00 AM", origin: "TXL", destination: "MUC", stops: 0, airlineCode: "LH", baggageAllowance: "1 bag, 23kg", wifiAvailability: true, inFlightEntertainment: true, mealIncluded: true)

private var flight3 = Flights(name: "Turkish Airlines", image: "Turkish Airlines",description: "Türkisch Airline a better Flight ",price: 399, duration: "4h 45m", departureTime: "10:30 PM", arrivalTime: "4:15 AM", origin: "IST", destination: "AMS", stops: 1, airlineCode: "TK", baggageAllowance: "2 bags, 32kg each", wifiAvailability: true, inFlightEntertainment: true, mealIncluded: true)

private var flight4 = Flights(name: "ATA Airlines", image: "ATA Airlines",description: "A Airline who since at 1978", price: 699, duration: "3h 15m", departureTime: "6:00 AM", arrivalTime: "9:15 AM", origin: "JFK", destination: "ORD", stops: 0, airlineCode: "ATA", baggageAllowance: "2 bags, 23kg each", wifiAvailability: true, inFlightEntertainment: false, mealIncluded: false)

private var flight5 = Flights(name: "Condor Airlines", image: "Condor Airlines",description: "A Airline who since at 1978", price: 999, duration: "9h 0m", departureTime: "1:30 PM", arrivalTime: "10:30 PM", origin: "FRA", destination: "LAS", stops: 1, airlineCode: "DE", baggageAllowance: "1 bag, 20kg", wifiAvailability: false, inFlightEntertainment: true, mealIncluded: true)

private var flight6 = Flights(name: "WANDA AIRLINES", image: "WANDA AIRLINES",description: "A Airline who since at 1978", price: 444, duration: "8h 45m", departureTime: "2:15 AM", arrivalTime: "11:30", origin: "FRA", destination: "LAS", stops: 1, airlineCode: "DE", baggageAllowance: "1 bag, 20kg", wifiAvailability: false, inFlightEntertainment: true, mealIncluded: true)

private var flight7 = Flights(name: "WANDA AIRLINES", image: "WANDA AIRLINES",description: "A Airline who since at 1978", price: 444, duration: "8h 45m", departureTime: "2:15 AM", arrivalTime: "11:30", origin: "FRA", destination: "LAS", stops: 1, airlineCode: "DE", baggageAllowance: "1 bag, 20kg", wifiAvailability: false, inFlightEntertainment: true, mealIncluded: true)

private var flight8 = Flights(name: "WANDA AIRLINES", image: "WANDA AIRLINES",description: "A Airline who since at 1978", price: 444, duration: "8h 45m", departureTime: "2:15 AM", arrivalTime: "11:30", origin: "FRA", destination: "LAS", stops: 1, airlineCode: "DE", baggageAllowance: "1 bag, 20kg", wifiAvailability: false, inFlightEntertainment: true, mealIncluded: true)



// Das Modell für die Liste von Flügen.
struct FlightModel {
    // Eine Liste von Flugobjekten.
    var flightsList: [Flights] = [flight1, flight2, flight3, flight4, flight5, flight6, flight7, flight8]
    // Der Suchtext, der für die Filterung der Flüge verwendet wird.
    var searchtext: String = ""
}
