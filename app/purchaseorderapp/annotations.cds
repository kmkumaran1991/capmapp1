using MyService as service from '../../srv/Service';

annotate service.poheaderset with @(

    UI.SelectionFields:[ poid, vendor ],

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
                {
            $Type : 'UI.ReferenceFacet',
            Target : 'Items/@UI.LineItem#AQUAMAN',
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

annotate service.poitemset with @(
    UI.LineItem #AQUAMAN:[
        {
            $Type : 'UI.DataField',
            Value : item,
            Label: 'item No'
        },
        {
            $Type : 'UI.DataField',
            Value : price,
            Label : 'Price',
        },
        {
            $Type : 'UI.DataField',
            Value : quantity, 
            Label : 'Quantity'
        },
    ]
);

