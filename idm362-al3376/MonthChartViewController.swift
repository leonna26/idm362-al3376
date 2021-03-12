//
//  MonthChartViewController.swift
//  idm362-al3376
//
//  Created by Anna Leong on 3/11/21.
//

import UIKit
import Charts
class MonthChartViewController: UIViewController {
    
    @IBOutlet var monthChart: PieChartView!
    
    
    // let players = ["Ozil", "Ramsey", "Laca", "Auba", "Xhaka", "Torreira"]
    // let goals = [6, 8, 26, 30, 8, 10]
     
     let players = ["% left", "% used"]
     let goals = [35, 65]
     
   override func viewDidLoad() {
     super.viewDidLoad()
     
     customizeChart(dataPoints: players, values: goals.map{ Double($0) })
   }
   
   func customizeChart(dataPoints: [String], values: [Double]) {
     
     // 1. Set ChartDataEntry
     var dataEntries: [ChartDataEntry] = []
    for i in 0..<dataPoints.count {
      let dataEntry = PieChartDataEntry(value: values[i], label: dataPoints[i], data:  dataPoints[i] as AnyObject)
      dataEntries.append(dataEntry)
     }
     
     // 2. Set ChartDataSet
     let pieChartDataSet = PieChartDataSet(dataEntries)
     pieChartDataSet.colors = colorsOfCharts(numbersOfColor: dataPoints.count)
     
     // 3. Set ChartData
     let pieChartData = PieChartData(dataSet: pieChartDataSet)
     let format = NumberFormatter()
     format.numberStyle = .none
     let formatter = DefaultValueFormatter(formatter: format)
     pieChartData.setValueFormatter(formatter)
     
     // 4. Assign it to the chart's data
     monthChart.data = pieChartData
   }
   
   private func colorsOfCharts(numbersOfColor: Int) -> [UIColor] {
     var colors: [UIColor] = []
 //    for _ in 0..<numbersOfColor {
 //      let red = Double(arc4random_uniform(256))
 //      let green = Double(arc4random_uniform(256))
 //      let blue = Double(arc4random_uniform(256))
 //      let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
 //        print("red is \(red)" )
 //      colors.append(color)
 //    }
     
     // set first slice color
     var color = UIColor(red: 1, green: 0.91, blue: 0.60, alpha: 1)
       colors.append(color)

     // set second slice color
    color = UIColor(red: 0.47, green: 0.73, blue: 0.57, alpha: 1)
     colors.append(color)

     return colors
   }
 }
