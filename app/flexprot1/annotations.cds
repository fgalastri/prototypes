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

annotate service.AssignmentLogs with @(
    UI.HeaderInfo : {
        TypeName : '{i18n>AssignmentLog}',
        TypeNamePlural : '{i18n>AssignmentLogs}',
    }
);


annotate service.AniLogs with @(
    UI.HeaderInfo : {
        TypeName : '{i18n>AniLogs}',
        TypeNamePlural : '{i18n>AniLogs}',
    }
);

annotate service.POs with @(
    UI.HeaderInfo : {
        TypeName : '{i18n>PO}',
        TypeNamePlural : '{i18n>POs}',
    }
);
