sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'purchaseorderapp/test/integration/FirstJourney',
		'purchaseorderapp/test/integration/pages/PurchaseOrdersList',
		'purchaseorderapp/test/integration/pages/PurchaseOrdersObjectPage'
    ],
    function(JourneyRunner, opaJourney, PurchaseOrdersList, PurchaseOrdersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('purchaseorderapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePurchaseOrdersList: PurchaseOrdersList,
					onThePurchaseOrdersObjectPage: PurchaseOrdersObjectPage
                }
            },
            opaJourney.run
        );
    }
);