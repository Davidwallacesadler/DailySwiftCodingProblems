import Foundation

// MARK: - Notes

// The below equations were to simulate the heat transfer from the solar panel to the storage tank:
// 1.) First I Used the Newton's Law of Cooling to find the convective heat transfer rates { q = h*A*deltaT such that h = convective heat transfer coefficient (W/m^2*K), A = heat transfer area (m^2), deltaT = temperature difference between fluid and surface (Kelvin)}
// 2.) Then I Used the convection heat transfer equation to find the overall heat transfered to the desired object and to solve for the change in temperature (deltaT) { Q = c*m*deltaT | c = heat capacitance of object (J/g*K), m = mass of the object (grams), deltaT = Change from inital temperature to final temperature (Kelvin)}

// Assumptions for the system:
//  - This model doesn't account for heat and energy losses to the environemnt.
//  - Since there is a liquid flowing through the system I will assume that all the heat transfer in the system is through convection.
// For the enviornment:
//  - Im assuming the convective heat transfer coefficient of air is 30 (h = 30 W/m^2*K).
// For the coolant:
//  - I'm assuming the flow of the coolant is at a constant rate of 1 gallon per minute => 63.09 grams/second.
//  - When the coolant is passing through the panel the convective heat transfer coefficient is h = 50 W/m^2*K, and when it is in the tank it has h = 100 W/m^2*K.
// For the solar panel:
//  - The thermal conductivity of the panel is equal to that of carbon (1.7 W/m*K).
//  - The heat capacitance for the panel is equal to 5.0 J/g*K.
//  - The mass of the panel is 25 Kg => 25000 g.
// For the storage tank:
//  - The tank is assumed to be a cylinder with a diameter of 10 meters => Cross sectional area = pi*5^2.
//  - The inital temperature of the tank = intial temperature of the water running through the system.
//  - The heat capacity of the tank is assumed to be 5.0 J/m*K.

// MARK: - Object and Method Definitions

struct ThermoBody {
    let heatCapacitance: Double // Joules per gram Kelvin
    let mass: Double // grams
    let heatTransferSurfaceArea: Double // meters squared
    let initialTemperature: Double // Kelvin
    var currentTemperature: Double // Kelvin
}

struct Fluid {
    let heatCapacitance: Double // Joules per gram kelvin
    let initialTemperature: Double // Kelvin
    var outputTemperature: Double? // Kelvin
}

/// This method just calculates heat transfer using the convection heat transfer equation:
func calculateHeatTransfer(givenThermoBody body: ThermoBody) -> Double {
    return (body.mass * body.heatCapacitance * (body.currentTemperature - body.initialTemperature))
}

/// Runs the simulation and returns the final heat transfered to the storage tank in Joules.
func runSimulation(secondsRunningSimulation: Int,
                   coolantInitialTemp: Double,
                   coolantTubeCrossSection: Double,
                   coolantCapacitance: Double,
                   coolantFlowRate: Double,
                   panelCapacitance: Double,
                   panelMass: Double,
                   panelSurfaceArea: Double,
                   panelInitialTemp: Double,
                   tankCapacitance: Double,
                   tankMass: Double,
                   tankSurfaceArea: Double,
                   environmentCapacitance: Double,
                   environmentTemp: Double) -> Double {
    var solarPanel = ThermoBody(heatCapacitance: panelCapacitance, mass: panelMass, heatTransferSurfaceArea: panelSurfaceArea, initialTemperature: panelInitialTemp, currentTemperature: panelInitialTemp)
    var storageTank = ThermoBody(heatCapacitance: tankCapacitance, mass: tankMass, heatTransferSurfaceArea: tankSurfaceArea, initialTemperature: coolantInitialTemp, currentTemperature: coolantInitialTemp)
    var waterCoolant = Fluid(heatCapacitance: coolantCapacitance, initialTemperature: coolantInitialTemp, outputTemperature: coolantInitialTemp)
    let environment = Fluid(heatCapacitance: environmentCapacitance, initialTemperature: environmentTemp, outputTemperature: nil)
    let rateOfHeatFlowFromEnviornmentToPanel = solarPanel.heatTransferSurfaceArea * 30.0 * (environment.initialTemperature - solarPanel.initialTemperature)///hc = 30
    for t in 1...secondsRunningSimulation {
        // Temperature of the enviornment > Temperature of panel => Heat transfers into the panel:
        let heatTransferredFromEnvironmentToPanelAtTimeT = rateOfHeatFlowFromEnviornmentToPanel * Double(t)
        let panelTemperatureDeltaAtTimeT = heatTransferredFromEnvironmentToPanelAtTimeT / (solarPanel.heatCapacitance * solarPanel.mass)
        solarPanel.currentTemperature = solarPanel.currentTemperature + panelTemperatureDeltaAtTimeT * 1.0
        // Temperature of panel > temperature of water => Heat transfers into the water:
        // Assuming that the convective heating coefficient of the water here is 50.0 W/m^2*K:
        let heatTransferredFromPanelToWaterAtTimeT = 50.0 * coolantTubeCrossSection * (solarPanel.currentTemperature - waterCoolant.initialTemperature)
        let waterTemperatureDeltaAtTimeT = heatTransferredFromPanelToWaterAtTimeT / (waterCoolant.heatCapacitance * coolantFlowRate)
        waterCoolant.outputTemperature = waterCoolant.initialTemperature + waterTemperatureDeltaAtTimeT
        // Temperature of outputWater > temperature of storage tank => Heat transfers to the storage tank:
        // Assuming that the water is now very hot now the convective heating coefficient of the water is 100.0 W/m^2*K:
        let heatTransferredFromWaterToTankAtTimeT = 100.0 * storageTank.heatTransferSurfaceArea * (waterCoolant.outputTemperature! - storageTank.currentTemperature)
        let tankTemperatureDeltaAtTimeT = heatTransferredFromWaterToTankAtTimeT / (storageTank.heatCapacitance * storageTank.mass )
        storageTank.currentTemperature = storageTank.currentTemperature + tankTemperatureDeltaAtTimeT
        print("At t=\(t)s the heat transfered to the storage tank is \(heatTransferredFromWaterToTankAtTimeT) Joules, current temperature is \(storageTank.currentTemperature) Kelvin.")
    }
    let finalHeatTransferred = calculateHeatTransfer(givenThermoBody: storageTank)
    print("Final heat transfered to stroage tank is \(finalHeatTransferred) Joules after \(runningSeconds) seconds of runtime.")
    return finalHeatTransferred
}

// MARK: - Input Parameters and Method Call

let runningSeconds = 50 // seconds
let panelHeatCapacitance = 5.0 // J/g*K
let panelMass = 25000.0 // grams
let panelSurfaceArea = 10.0 // meters^2
let panelInitialTemperature = 294.261 // Kelvin
let tankHeatCapacitance = 5.0 // J/g*K
let tankMass = 5000000.0 // grams
let tankSurfaceArea = 31.4159 // meters^2
let coolantHeatCapacitance = 4.18 // J/g*K
let coolantInitialTemp = 275.0 // Kelvin
let coolantTubeCrossSection = 0.00050670747 //meters^2 (assuming a 1 inch diameter of tube)
let coolantFlowRate = 63.09 // grams/second
let environmentHeatCapacitance = 1.003 // J/g*K
let environmentTemp = 325.0 // Kelvin

runSimulation(secondsRunningSimulation: runningSeconds,
              coolantInitialTemp: coolantInitialTemp,
              coolantTubeCrossSection: coolantTubeCrossSection,
              coolantCapacitance: coolantHeatCapacitance,
              coolantFlowRate: coolantFlowRate,
              panelCapacitance: panelHeatCapacitance,
              panelMass: panelMass,
              panelSurfaceArea: panelSurfaceArea,
              panelInitialTemp: panelInitialTemperature,
              tankCapacitance: tankHeatCapacitance,
              tankMass: tankMass,
              tankSurfaceArea: tankSurfaceArea,
              environmentCapacitance: environmentHeatCapacitance,
              environmentTemp: environmentTemp)
