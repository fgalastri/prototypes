const cds = require("@sap/cds")



module.exports = srv => {

    srv.on("showPDF", () =>{
        console.log("show PDF");
    });

    srv.on("solve", () =>{
        console.log("solve");
    });

    srv.on("assign", () =>{
        console.log("assign");
    });

}



/*
class MonitorService extends cds.ApplicationService {

init(){

    this.on("showPDF", (req) =>
      UPDATE(req._target).with({ TravelStatus_code: "A" })
    )
}

}
*/