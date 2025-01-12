namespace capmapp1.db;

using { cuid } from '@sap/cds/common';


context master {
    entity poheader : cuid {
        key poid: String;
            vendor: String;
            amount: Decimal;
            createdAt: DateTime;
    }
}

