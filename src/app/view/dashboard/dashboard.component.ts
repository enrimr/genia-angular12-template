import { Component, OnInit } from '@angular/core';

/**
 * Represents a dashboard to showcase different graphs.
 */
@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {

  public barChartData: Array<any> = [
    {data: [65, 59, 80, 81, 56, 55, 40], label: 'Sample Data'}
  ];
  public barChartOptions: any = {
    scaleShowVerticalLines: false,
    responsive: true
  };

  public pieChartData: Array<any> = [300, 500, 100];
  public pieChartOptions: any = {
    responsive: true
  };

  ngOnInit(): void {}
}
