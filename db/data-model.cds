using { sap, managed } from '@sap/cds/common';

namespace my.prototypes;


entity Tickets : managed {
  key ticket : Integer;
  assignedArea : String(10);
  assignedTo : String(20);
  nfnum  : String(6);
  series  : String(2);
  issueDate : String(10);
  tomCNPJ : String(15);
  vendorCNPJ : String(15);
  vendor : String(10);
  vendorName : String(25);
  status : String(55);
  ISSRet : String(12);
  ISSDest : String(12);
  INSS : String(12);
  IRRF : String(12);
  PIS : String(12);
  COFINS : String(12);
  CSLL : String(12);
  totalValue : Decimal(16, 3);
  ticketPOs : Composition of many POs on ticketPOs.to_Ticket = $self;
  AssignmentLogs : Composition of many AssignmentLogs on AssignmentLogs.to_Ticket = $self;
  AniLogs : Composition of many AniLogs on AniLogs.to_Ticket = $self;
} ; 


entity Status : managed {
  key status : String; 
      description : String;
}

entity POs : managed {
  key poNumber : String(10);
  key poItem : String(5);
  key FRS : String(12);
  key FRSItem : String(5);
  service : String(18);
  description : String(30);
  quantity : Decimal(12,3);
  value : Decimal(16,3);
  to_Ticket : Association to Tickets;
}

entity AssignmentLogs: managed {
  key assignDate : String(10);
  key assignTime : String(10);
  status : String(30);  
  assignedTo : String(25);
  assignedBy : String(25);
  to_Ticket : Association to Tickets;
}

entity AniLogs : managed {
  key ticket : Integer; 
  key ticketSeq : Integer;
      nfnum : String(15);
      process : String(5);
      status : String(3); 
      username : String(20);
      date : String(10);
      time : String(10);
      type : String(3);
      msgno : String(3);
      message : String(100);
      to_Ticket : Association to Tickets on ticket = to_Ticket.ticket; 
}