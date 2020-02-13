$(document).ready(function () {
    var source =
        {
            datatype: "csv",
            datafields: [
                { name: 'Quarter' },
                { name: 'Change' }
            ],
            url: '../view_admin/data2.csv'
        };
    var dataAdapter = new $.jqx.dataAdapter(
        source,
        {
            async: false,
            autoBind: true,
            loadError: function (xhr, status, error) {
                alert('Error loading "' + source.url + '" : ' + error);
            }
        }
    );
    settings = {
        title: "Pourcentage des hausses/baisses des revenues",
        borderLineWidth: 1,
        showBorderLine: true,
        enableAnimations: true,
        description: '(cinq dernieres années)',
        showLegend: false,
        source: dataAdapter,
        xAxis:
            {
                dataField: 'Quarter',
                unitInterval: 1,
                textRotationAngle: -75,
                formatFunction: function (value, itemIndex, serie, group) {
                    return value;
                },
                valuesOnTicks: false
            },
        colorScheme: 'scheme05',
        seriesGroups:
            [
                {
                    type: 'column',
                    valueAxis:
                        {
                            description: 'Pourcentage',
                            formatFunction: function (value) {
                                return value + '%';
                            },
                            maxValue: 10,
                            minValue: -10,
                            unitInterval: 2
                        },
                    series:
                        [
                            {
                                dataField: 'Change',
                                displayText: 'Change',
                                toolTipFormatFunction: function(value, itemIndex, serie, group, categoryValue, categoryAxis) {
                                    return '<DIV style="text-align:left";><b>Quart de lannée: </b>' + categoryValue
                                        + '<br /><b>Taux:</b> ' + value + ' %</DIV>'
                                },
                                // Modify this function to return the desired colors.
                                // jqxChart will call the function for each data point.
                                // Sequential points that have the same color will be
                                // grouped automatically in a line segment
                                colorFunction: function (value, itemIndex, serie, group) {
                                    return (value < 0) ? '#CC1133' : '#55CC55';
                                }
                            }
                        ]
                }
            ]
    };
    $("#chart2").jqxChart(settings);
});