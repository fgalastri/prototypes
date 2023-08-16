using MonitorService as service from '../../srv/cat-service';

annotate service.Tickets with @(
    UI.SelectionFields : [
        ticket,
        assignedArea,
        assignedTo,
        nfnum,
        status,
    ]
);
annotate service.Tickets with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ticket,
        },
        {
            $Type : 'UI.DataField',
            Value : assignedArea,
        },
        {
            $Type : 'UI.DataField',
            Value : assignedTo,
        },
        {
            $Type : 'UI.DataField',
            Value : nfnum,
        },
        {
            $Type : 'UI.DataField',
            Value : series,
        },
        {
            $Type : 'UI.DataField',
            Value : issueDate,
        },
        {
            $Type : 'UI.DataField',
            Value : tomCNPJ,
        },
        {
            $Type : 'UI.DataField',
            Value : vendorCNPJ,
        },
        {
            $Type : 'UI.DataField',
            Value : vendor,
        },
        {
            $Type : 'UI.DataField',
            Value : vendorName,
        },
        {
            $Type : 'UI.DataField',
            Value : status,
        },
        {
            $Type : 'UI.DataField',
            Value : totalValue,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Label : 'Atribuir',
            Action : 'MonitorService.assign',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Label : 'Resolução',
            Action : 'MonitorService.solve',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Label : 'Exibir PDF',
            Action : 'MonitorService.showPDF',
        },
    ]
);
annotate service.Tickets with @(
    UI.HeaderInfo : {
        TypeName : '{i18n>ticket}',
        TypeNamePlural : '{i18n>tickets}',
        Title : {
            $Type : 'UI.DataField',
            Value : ticket,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : '{@i18n>ticket}',
        },
    }
);
