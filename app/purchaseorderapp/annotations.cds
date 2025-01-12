using MyService as service from '../../srv/Service';
annotate service.poheaderset with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Purchase Order No',
                Value : poid,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Vendor',
                Value : vendor,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Amount',
                Value : amount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Created Date',
                Value : createdAt,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Purchase Order No',
            Value : poid,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Vendor',
            Value : vendor,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Amount',
            Value : amount,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Created Date',
            Value : createdAt,
        },
    ],
);

