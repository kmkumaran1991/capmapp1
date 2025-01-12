namespace capmapp1.db;

using { cuid } from '@sap/cds/common';


context master {
    entity poheader : cuid {
        key poid: String @title : 'Purchase Order ID';
            vendor: String @title : 'Vendor Name';
            amount: Decimal;
            createdAt: DateTime;
        Items: Composition of  many poitem on Items.poid = $self;
    }
    entity poitem : cuid {
            poid: Association to master.poheader ;
            item: String @title : 'Item Number';
            quantity: Integer;
            price: Decimal;
    }
}

