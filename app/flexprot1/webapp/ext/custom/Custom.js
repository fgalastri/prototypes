sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        customAssign: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
