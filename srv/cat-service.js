
class MonitorService extends cds.ApplicationService {

init(){

    this.on("showPDF","Tickets", async (req) =>
      {
            console.log(req);
            return await cds
            .transaction(req)
            .run(
                INSERT.into('MonitorService.AssignmentLogs').entries({
                    assignDate : "01.01.2022",
                    assignTime : "12:32:32",
                    status : "Pedido fom fom",
                    to_Ticket : req.data.ticket
                })
            )
            .then((resolve,reject) =>{
                
            })

            
        }
    )

    this.on("testAction", () =>
        console.log("teste action")
  )


    this.after("READ", (req) =>
       console.log("TESTE")
      )
    
      super.init()
}

}
module.exports = { MonitorService }
