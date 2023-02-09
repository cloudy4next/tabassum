/* global Chart:false */




$.ajax({
  url: "monthlyChart",
  method: "GET",
  dataType: "JSON",
  success: function (profit) {
    // console.log(profit);
    drawMonthwiseChart(profit);
  }
});

function drawMonthwiseChart(profit) {
  'use strict'

  var ticksStyle = {
    fontColor: '#495057',
    fontStyle: 'bold'
  }
  console.log(profit);
  var mode = 'index'
  var intersect = true

  var $visitorsChart = $('#visitors-chart')
  // eslint-disable-next-line no-unused-vars
  var visitorsChart = new Chart($visitorsChart, {
    data: {
      labels: profit[2],
      datasets: [{

        type: 'line',
        label: 'Expense',

        data: profit[0],
        backgroundColor: 'transparent',
        borderColor: '#e53047',
        pointBorderColor: '#e53047',
        pointBackgroundColor: '#e53047',
        fill: false,
        pointHoverBackgroundColor: '#e53047',
        pointHoverBorderColor: '#e53047'
      },
      {
        type: 'line',
        label: 'Profit',

        data: profit[1],
        backgroundColor: 'tansparent',
        borderColor: '#007bff',
        pointBorderColor: '#007bff',
        pointBackgroundColor: '#007bff',
        fill: false,
        pointHoverBackgroundColor: '#007bff',
        pointHoverBorderColor: '#007bff'
      }]
    },
    options: {
      maintainAspectRatio: false,
      tooltips: {
        mode: mode,
        intersect: intersect
      },
      hover: {
        mode: mode,
        intersect: intersect
      },
      legend: {
        display: false
      },
      scales: {
        yAxes: [{
          // display: false,
          gridLines: {
            display: true,
            lineWidth: '4px',
            color: 'rgba(0, 0, 0, .2)',
            zeroLineColor: 'transparent'
          },
          ticks: $.extend({
            beginAtZero: true,
            suggestedMax: 200
          }, ticksStyle)
        }],
        xAxes: [{
          display: true,
          gridLines: {
            display: false
          },
          ticks: ticksStyle
        }]
      }
    }
  })
};

// lgtm [js/unused-local-variable]
