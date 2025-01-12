using { capmapp1.db.master.poheader as poheader, capmapp1.db.master.poitem as poitem } from '../db/data-model';

service MyService @(path:'CatalogService',requires: 'authenticated-user') {

    entity poheaderset @(odata.draft.enabled: true) as projection on poheader{
        *, 
        Items
    };

    entity poitemset  as projection on poitem;

}
