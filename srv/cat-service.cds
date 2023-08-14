using my.prototypes as my from '../db/data-model';

service MonitorService {
    @readonly entity Tickets as projection on my.Tickets  actions {
    action rejectTravel();
    action acceptTravel();
  };
  
    entity Status as projection on my.Status;
}   


annotate MonitorService.Tickets with @(


   UI.FieldGroup #NFHeader : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ticket,
                Label : '{i18n>ticket}',
            },
            {
                $Type : 'UI.DataField',
                Value : nfnum,
                Label : '{i18n>nfnum}',
            },{
                $Type : 'UI.DataField',
                Value : series,
                Label : '{i18n>series}',
            },{
                $Type : 'UI.DataField',
                Value : issueDate,
                Label : '{i18n>issueDate}',
            },],
    },

   UI.FieldGroup #NFPartners : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : tomCNPJ,
                Label : '{i18n>tomCNPJ}',
            },
            {
                $Type : 'UI.DataField',
                Value : vendorCNPJ,
                Label : '{i18n>vendorCNPJ}',
            },
            {
                $Type : 'UI.DataField',
                Value : vendor,
                Label : '{i18n>vendor}',
            },
            {
                $Type : 'UI.DataField',
                Value : vendorName,
                Label : '{i18n>vendorName}',
            }],
    },


   UI.FieldGroup #NFStatus : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : status,
                Label : '{i18n>status}',
            }],
    },


   UI.FieldGroup #NFAssignment : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : assignedArea,
                Label : '{i18n>assignedArea}',
            },{
                $Type : 'UI.DataField',
                Value : assignedTo,
                Label : '{i18n>assignedTo}',
            }],
    },

   UI.FieldGroup #NFTaxes : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : INSS,
                Label : '{i18n>INSS}',
            },{
                $Type : 'UI.DataField',
                Value : IRRF,
                Label : '{i18n>IRRF}',
            },
            {
                $Type : 'UI.DataField',
                Value : ISSRet,
                Label : '{i18n>ISSRet}',
            },
            {
                $Type : 'UI.DataField',
                Value : ISSDest,
                Label : '{i18n>ISSDest}',
            },
            {
                $Type : 'UI.DataField',
                Value : PIS,
                Label : '{i18n>PIS}',
            },
            {
                $Type : 'UI.DataField',
                Value : COFINS,
                Label : '{i18n>COFINS}',
            },
            {
                $Type : 'UI.DataField',
                Value : CSLL,
                Label : '{i18n>CSLL}',
            },
            {
                $Type : 'UI.DataField',
                Value : totalValue,
                Label : '{i18n>totalValue}',
            }            ],
    },


    UI.SelectionFields : [
        ticket,
        assignedArea,
        assignedTo,
        nfnum,
        status
    ],

    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value :  ticket
        },
        { 
            $Type : 'UI.DataField',
            Value : assignedArea,
        },
        { 
            $Type : 'UI.DataField',
            Value :  assignedTo,
        },
        { 
            $Type : 'UI.DataField',
            Value :  nfnum,
        },
        { 
            $Type : 'UI.DataField',
            Value :  series,
            
        },
        { 
            $Type : 'UI.DataField',
            Value :  issueDate,
        },
        { 
            $Type : 'UI.DataField',
            Value :  tomCNPJ,
        },
        { 
            $Type : 'UI.DataField',
            Value :  vendorCNPJ,
        },
        { 
            $Type : 'UI.DataField',
            Value :  vendor,
        },
        { 
            $Type : 'UI.DataField',
            Value :  vendorName,
        },
        { 
            $Type : 'UI.DataField',
            Value :  status,
        },
        {
            $Type : 'UI.DataField',
            Value : totalValue,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Label :  'Atribuir',
            Action : 'MonitorService.assign'
        },
        {
            $Type : 'UI.DataFieldForAction',
            Label : 'Exibir PDF',
            Action : 'MonitorService.showPDF'
        },
        {
            $Type : 'UI.DataFieldForAction',
            Label :  'Resolução',
            Action : 'MonitorService.solve'
        }
    ] ,

    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>BasicData}',
            ID : 'BasicData',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>NFHeader}',
                    ID : 'NFHeader',
                    Target : '@UI.FieldGroup#NFHeader',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>NFAssignment}',
                    ID : 'NFAssignment',
                    Target : '@UI.FieldGroup#NFAssignment',
                },

                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>NFPartners}',
                    ID : 'NFPartners',
                    Target : '@UI.FieldGroup#NFPartners',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>NFStatus}',
                    ID : 'NFStatus',
                    Target : '@UI.FieldGroup#NFStatus',
                }

            ],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>POs}',
            ID : 'POs',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>POs}',
                    ID : 'POs',
                    Target : '@UI.FieldGroup#POs'
                }
            ]
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>Taxes}',
            ID : 'Taxes',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>NFTaxes}',
                    ID : 'NFTaxes',
                    Target : '@UI.FieldGroup#NFTaxes'
                }
            ]
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>AssignmentLogs}',
            ID : 'AssignmentLogs',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>AssignmentLogs}',
                    ID : 'AssignmentLogs',
                    Target : '@UI.FieldGroup#AssignmentLogs',
                }
            ]
        }



    ]


) {

        ticket @title: '{i18n>ticket}';
        assignedArea  @title: '{i18n>assignedArea}';
        assignedTo @title: '{i18n>assignedTo}';
        nfnum @title: '{i18n>nfnum}';
        series @title: '{i18n>series}';
        issueDate @title: '{i18n>issueDate}';
        tomCNPJ @title: '{i18n>tomCNPJ}';
        vendorCNPJ @title: '{i18n>vendorCNPJ}';
        vendor @title: '{i18n>vendor}';
        vendorName @title: '{i18n>vendorName}';
        status @title: '{i18n>status}';
        totalValue @title : '{i18n>totalValue}';
};