$(document).ready(function () {
    // prepare chart data as an array
    var source =
        {
            datatype: "csv",
            datafields: [
                { name: 'Browser' },
                { name: 'Share' }
            ],
            url: '../view_admin/data.txt'
        };
    var dataAdapter = new $.jqx.dataAdapter(source, { async: false, autoBind: true, loadError: function (xhr, status, error) { alert('Error loading "' + source.url + '" : ' + error); } });
    // prepare jqxChart settings
    var settings = {
        title: "Répartition des ventes",
        description: "(Ce mois-ci)",
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
    // setup the chart
    $('#chartContainer').jqxChart(settings);
});