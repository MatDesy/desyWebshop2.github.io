$(document).ready(function () {
    // prepare chart data
    var sampleData = [
        { item: 'PC', vue: 8394, Percent: 63.29 },
        { item: 'Souris', vue: 3044, Percent: 22.95 },
        { item: 'Clavier', vue: 1234, Percent: 9.30 },
        { item: 'Tapis', vue: 400, Percent: 3.01 },
        { item: 'Autre', vue: 189, Percent: 1.42 }];
    // prepare jqxChart settings
    var settings = {
        title: "Top 5 des articles les plus visités",
        description: "Statistiques du mois",
        showLegend: true,
        enableAnimations: true,
        padding: { left: 20, top: 5, right: 20, bottom: 5 },
        titlePadding: { left: 90, top: 0, right: 0, bottom: 10 },
        source: sampleData,
        xAxis:
            {
                dataField: 'item',
                gridLines: { visible: true },
                flip: false
            },
        valueAxis:
            {
                flip: true,
                labels: {
                    visible: true,
                    formatFunction: function (value) {
                        return parseInt(value / 1);
                    }
                }
            },
        colorScheme: 'scheme01',
        seriesGroups:
            [
                {
                    type: 'column',
                    orientation: 'horizontal',
                    columnsGapPercent: 50,
                    toolTipFormatSettings: { thousandsSeparator: ',' },
                    series: [
                        { dataField: 'vue', displayText: 'nombre de vue (par millier)' }
                    ]
                }
            ]
    };
    // setup the chart
    $('#chartContainer3').jqxChart(settings);
});