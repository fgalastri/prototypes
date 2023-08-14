const cds = require("@sap/cds")

class TravelService extends cds.ApplicationService {

init(){

    this.on("rejectTravel", (req) =>
        UPDATE(req._target).with({ TravelStatus_code: "X" })
    )
}

}
