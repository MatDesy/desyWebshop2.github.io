$(document).ready(function () {
    // prepare chart data as an array
    var source =
        {
            datatype: "csv",
            datafields: [
                { name: 'Browser' },
                { name: 'Share' }
            ],
            url: '../view_user/data.txt'
        };
    var dataAdapter = new $.jqx.dataAdapter(source, { async: false, autoBind: true, loadError: function (xhr, status, error) { alert('Error loading "' + source.url + '" : ' + error); } });
    // prepare jqxChart settings
    var settings = {
        title: "Répartition de vos dépenses",
        description: "(De ce mois-ci)",
        enableAnimations: true,
        showLegend: true,
        showBorderLine: true,
        legendLayout: { left: 700, top: 160, width: 300, height: 200, flow: 'vertical' },
        padding: { left: 5, top: 5, right: 5, bottom: 5 },
        titlePadding: { left: 0, top: 0, right: 0, bottom: 10 },
        source: dataAdapter,
        colorScheme: 'scheme03',
        seriesGroups:
            [
                {
                    type: 'pie',
                    showLabels: true,
                    series:
                        [
                            {
                                dataField: 'Share',
                                displayText: 'Browser',
                                labelRadius: 170,
                                initialAngle: 15,
                                radius: 145,
                                centerOffset: 0,
                                formatFunction: function (value) {
                                    if (isNaN(value))
                                        return value;
                                    return parseFloat(value) + '%';
                                },
                            }
                        ]
                }
            ]
    };
    // prepare the data
    // prepare the data
    var source2 =
        {
            datatype: "csv",
            datafields: [
                { name: 'Date' },
                { name: 'Open' },
                { name: 'High' },
                { name: 'Low' },
                { name: 'Close' },
                { name: 'Volume' },
                { name: 'AdjClose' }
            ],
            url: '../view_user/data2.csv'
        };
    var dataAdapter2 = new $.jqx.dataAdapter(source2, { async: false, autoBind: true, loadError: function (xhr, status, error) { alert('Error loading "' + source2.url + '" : ' + error); } });
    var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    // prepare jqxChart settings
    var settings2 = {
        title: "Popularité de vos commentaire",
        description: "Vos upvotes (Juin 2013 - Mars 2017)",
        enableAnimations: true,
        enableCrosshairs: true,
        crosshairsDashStyle: '1,1',
        crosshairsColor: '#0000FF',
        showLegend: true,
        padding: { left: 15, top: 5, right: 30, bottom: 5 },
        titlePadding: { left: 90, top: 0, right: 0, bottom: 10 },
        source: dataAdapter2,
        xAxis:
            {
                type: 'date',
                baseUnit: 'month',
                minValue: new Date(2013, 5, 1),
                maxValue: new Date(2017, 2, 1),
                valuesOnTicks: true,
                dataField: 'Date',
                labels:
                    {
                        formatFunction: function (value) {
                            return months[value.getUTCMonth()] + '-' + value.getFullYear();
                        },
                        angle: 0,
                        horizontalAlignment: 'right'
                    },
                toolTipFormatFunction: function (value) {
                    return value.getDate() + '-' + months[value.getMonth()] + '-' + value.getFullYear();
                },
                tickMarks: { visilbe: true }
            },
        colorScheme: 'scheme01',
        seriesGroups:
            [
                {
                    type: 'stepline',
                    valueAxis:
                        {
                            flip: false,
                            title: { text: 'Nombre de upvotes<br>' },
                            labels: { horizontalAlignment: 'right' }
                        },
                    series: [
                        { dataField: 'Close', displayText: 'Upvote', lineWidth: 1, symbolSize: 6 }
                    ]
                }
            ]
    };
    // setup the chart
    // setup the chart
    $('#chartContainer').jqxChart(settings);
    $('#chartContainer2').jqxChart(settings2);
});