sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/apo/purchaseorderapp/test/integration/FirstJourney',
		'com/apo/purchaseorderapp/test/integration/pages/poheadersetList',
		'com/apo/purchaseorderapp/test/integration/pages/poheadersetObjectPage'
    ],
    function(JourneyRunner, opaJourney, poheadersetList, poheadersetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/apo/purchaseorderapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThepoheadersetList: poheadersetList,
					onThepoheadersetObjectPage: poheadersetObjectPage
                }
            },
            opaJourney.run
        );
    }
);