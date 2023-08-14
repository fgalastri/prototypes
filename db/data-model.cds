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
  status : String(25);
  ISSRet : String(12);
  ISSDest : String(12);
  INSS : String(12);
  IRRF : String(12);
  PIS : String(12);
  COFINS : String(12);
  CSLL : String(12);
  totalValue : Decimal(16, 3);
} ; 


entity Status : managed {
  key status : String; 
      description : String;
}
