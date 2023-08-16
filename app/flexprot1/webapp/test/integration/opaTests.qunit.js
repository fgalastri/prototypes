sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'flexprot/flexprot1/test/integration/FirstJourney',

    ],
    function(JourneyRunner, opaJourney, ) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('flexprot/flexprot1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 

                }
            },
            opaJourney.run
        );
    }
);